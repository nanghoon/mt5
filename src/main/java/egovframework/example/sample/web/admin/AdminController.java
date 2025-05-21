package egovframework.example.sample.web.admin;

import java.io.File;
import java.io.PrintWriter;
import java.util.Properties;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import egovframework.example.sample.service.impl.SampleDAO;
import egovframework.example.sample.web.utils.Utils;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Resource(name = "sampleDAO")
	private SampleDAO sampleDAO;
	
	@Resource(name = "fileProperties")
	private Properties fileProperties;

	@RequestMapping(value="/login.do")
	public String login(){
		return "admin/login";
	}
	
	@ResponseBody
	@RequestMapping(value="/loginProcess.do" , produces = "application/json; charset=utf8")
	public String loginProcess(HttpServletRequest request){
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		JSONObject obj = new JSONObject();
		obj.put("result", "fail");
		if(Utils.isNull(id)){
			obj.put("msg", Utils.input("아이디"));
			return obj.toJSONString();
		}
		if(Utils.isNull(pw)){
			obj.put("msg", Utils.input("비밀번호"));
			return obj.toJSONString();
		}
		EgovMap in = new EgovMap();
		in.put("id", id);
		in.put("pw", pw);
		EgovMap info = (EgovMap)sampleDAO.select("checkAdminLogin",in);
		if(info == null){ 
			obj.put("msg", "로그인 정보 없음");
			return obj.toJSONString();
		}else{ 
			HttpSession session = request.getSession();
			session.setAttribute("adminIdx", info.get("idx"));
			obj.put("result", "suc");
			return obj.toJSONString();
		}
	}
	
	@RequestMapping(value="/logout.do")
	public String logout(HttpServletRequest request){
		HttpSession session = request.getSession();
		session.setAttribute("adminIdx", null);
		return "redirect:login.do";
	}
	
	@RequestMapping(value = "/editorFileUpload.do") // attach_photo.js 에 설정한 업로드 경로 
	public void editorFileUpload(MultipartHttpServletRequest mre,HttpServletRequest request, ModelMap model , HttpServletResponse response) throws Exception {
	    try {
	         String sFileInfo = "";
	         String filename = mre.getFile("file").getOriginalFilename();
	         String filename_ext = filename.substring(filename.lastIndexOf(".")+1);
	         filename_ext = filename_ext.toLowerCase();
	         String dftFilePath = fileProperties.getProperty("file.editor.upload");
	         String filePath = dftFilePath;  // 서버 업로드 경로 
	         File file = new File(filePath);
	         if(!file.exists()) {
	            file.mkdirs();
	         }
	         String realFileNm = "";
	         realFileNm = UUID.randomUUID().toString().replaceAll("-", "") + filename.substring(filename.lastIndexOf("."));
	         String rlFileNm = filePath + realFileNm;
	         MultipartFile mf = mre.getFile("file");
	         mf.transferTo(new File(rlFileNm));
	         // 정보 출력
	         sFileInfo += "&bNewLine=true";
	         sFileInfo += "&sFileName="+ realFileNm;;
	         sFileInfo += "&sFileURL=/filePath/mt5/editor/"+realFileNm; //에디터 이미지 나타낼 소스 경로
	         PrintWriter print = response.getWriter();
	         print.print(sFileInfo);
	         print.flush();
	         print.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
	
	@RequestMapping(value="/popup.do")
	public String popup(HttpServletRequest request , Model model){
		model.addAttribute("info", sampleDAO.select("selectPopup"));
		return "admin/popup";
	}
	
	@ResponseBody
	@RequestMapping(value="/popupSet.do" , produces = "application/json; charset=utf8")
	public String popupSet(HttpServletRequest request){
		String idx = request.getParameter("idx");
		String title = request.getParameter("title");
		String sub = request.getParameter("sub");
		String pdate = request.getParameter("pdate");
		String pop = request.getParameter("pop");
		JSONObject obj = new JSONObject();
		obj.put("result", "fail");
		EgovMap in = new EgovMap();
		in.put("idx", idx);
		in.put("title", title);
		in.put("sub", sub);
		in.put("pdate", pdate);
		in.put("pop", pop);
		sampleDAO.update("updatePopup",in);
		obj.put("result", "success");
		obj.put("msg", "수정 완료되었습니다");
		return obj.toJSONString();
	}
}
