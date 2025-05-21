package egovframework.example.sample.web.admin;

import java.util.Properties;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.example.sample.service.impl.SampleDAO;
import egovframework.example.sample.web.utils.Utils;
import egovframework.rte.psl.dataaccess.util.EgovMap;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller
@RequestMapping("/admin/notice")
public class AdminNoticeController {
	
	@Resource(name = "sampleDAO")
	private SampleDAO sampleDAO;
	
	@Resource(name = "fileProperties")
	private Properties fileProperties;
	
	@RequestMapping(value="/list.do")
	public String list(HttpServletRequest request, Model model){
		String lang = request.getParameter("lang");
		if(Utils.isNull(lang)) lang = "en";
		String pageIndex = request.getParameter("pageIndex");
		PaginationInfo pi = new PaginationInfo();
		if(Utils.isNull(pageIndex)) pi.setCurrentPageNo(1);
		else pi.setCurrentPageNo(Integer.parseInt(pageIndex));
		pi.setPageSize(5);
		pi.setRecordCountPerPage(20);
		EgovMap in = new EgovMap();
		in.put("first", pi.getFirstRecordIndex());
		in.put("record", pi.getRecordCountPerPage());
		in.put("lang", lang);
		pi.setTotalRecordCount((int)sampleDAO.select("selectNoticeListCnt",in));
		model.addAttribute("list", sampleDAO.list("selectNoticeList",in));
		model.addAttribute("pi", pi);
		model.addAttribute("lang", lang);
		return "admin/noticelist";
	}

	@RequestMapping(value="/insert.do")
	public String insert(HttpServletRequest request, Model model){
		String lang = request.getParameter("lang");
		if(Utils.isNull(lang)) lang = "en";
		model.addAttribute("lang", lang);
		return "admin/noticeInsert";
	}
	
	@ResponseBody
	@RequestMapping(value= "/insertProcess.do" , produces = "application/json; charset=utf8")
	public String insertProcess(HttpServletRequest request){
		String lang = request.getParameter("lang");
		String title = request.getParameter("title");
		String text = request.getParameter("text");
		String ndate = request.getParameter("ndate");
		JSONObject obj = new JSONObject();
		obj.put("result","fail");
		if(Utils.isNull(title)){
			obj.put("msg", Utils.input("제목"));
			return obj.toJSONString();
		}
		if(Utils.isNull(text)){
			obj.put("msg", Utils.input("내용"));
			return obj.toJSONString();
		}
		if(Utils.isNull(ndate)){
			obj.put("msg", Utils.input("날짜"));
			return obj.toJSONString();
		}
		EgovMap in = new EgovMap();
		in.put("title", title);
		in.put("text", text);
		in.put("lang", lang);
		in.put("ndate", ndate);
		sampleDAO.insert("insertNotice",in);
		obj.put("result","success");
		return obj.toJSONString();
	}
	
	@RequestMapping(value="/detail.do")
	public String detail(HttpServletRequest request, Model model){
		String idx = request.getParameter("idx");
		model.addAttribute("info", sampleDAO.select("selectNoticeDetail", idx));
		model.addAttribute("idx", idx);
		return "admin/noticeDetail";
	}

	@ResponseBody
	@RequestMapping(value="/update.do", produces = "application/json; charset=utf8")
	public String update(HttpServletRequest request){
		String idx = request.getParameter("idx");
		String title = request.getParameter("title");
		String text = request.getParameter("text");
		String ndate = request.getParameter("ndate");
		JSONObject obj = new JSONObject();
		obj.put("result","fail");
		if(Utils.isNull(title)){
			obj.put("msg", Utils.input("제목"));
			return obj.toJSONString();
		}
		if(Utils.isNull(text)){
			obj.put("msg", Utils.input("내용"));
			return obj.toJSONString();
		}
		if(Utils.isNull(ndate)){
			obj.put("msg", Utils.input("날짜"));
			return obj.toJSONString();
		}
		EgovMap in = new EgovMap();
		in.put("idx", idx);
		in.put("title", title);
		in.put("text", text);
		in.put("ndate", ndate);
		sampleDAO.update("updateNotice", in);
		obj.put("result","success");
		return obj.toJSONString();
	}
	
	
	@ResponseBody
	@RequestMapping(value="/delete.do" , produces = "application/json; charset=utf8")
	public String delete(HttpServletRequest request){
		sampleDAO.delete("deleteNotice" , request.getParameter("idx"));
		JSONObject obj = new JSONObject();
		obj.put("result","success");
		return obj.toJSONString();
	}

}
