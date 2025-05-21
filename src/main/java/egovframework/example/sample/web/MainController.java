package egovframework.example.sample.web;

import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import egovframework.example.sample.service.impl.SampleDAO;
import egovframework.example.sample.web.utils.Utils;
import egovframework.rte.psl.dataaccess.util.EgovMap;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller
public class MainController {
	
	@Resource(name = "sampleDAO")
	private SampleDAO sampleDAO;
	
	@Resource(name="messageSource")
    MessageSource messageSource;
	
	private void setLanguageInSession(String lang, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if(Utils.isNull(lang)) lang="en";
        Locale locales = new Locale(lang);
        session.setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME, locales);
        session.setAttribute("lang", lang.toLowerCase());
    }
	
	@RequestMapping(value="/{lang}/main") // 맨처음 나올 페이지 
	public String mainlang(HttpServletRequest request, @PathVariable("lang") String lang , Model model){
		setLanguageInSession(lang, request);
		model.addAttribute("info", sampleDAO.select("selectPopup"));
		return "main";
	}
	@RequestMapping(value="/{lang}/company")
	public String companynlang(HttpServletRequest request, @PathVariable("lang") String lang){
		setLanguageInSession(lang, request);
		return "company/company";
	}
	@RequestMapping(value="/{lang}/trading/forex")
	public String forexnlang(HttpServletRequest request, @PathVariable("lang") String lang){
		setLanguageInSession(lang, request);
		return "trading/forex";
	}
	@RequestMapping(value="/{lang}/trading/commodotles")
	public String commodotlesnlang(HttpServletRequest request, @PathVariable("lang") String lang){
		setLanguageInSession(lang, request);
		return "trading/commodotles";
	}	
	@RequestMapping(value="/{lang}/trading/metals")
	public String metalsnlang(HttpServletRequest request, @PathVariable("lang") String lang){
		setLanguageInSession(lang, request);
		return "trading/metals";
	}
	@RequestMapping(value="/{lang}/trading/indices")
	public String indicesnlang(HttpServletRequest request, @PathVariable("lang") String lang){
		setLanguageInSession(lang, request);
		return "trading/indices";
	}
	@RequestMapping(value="/{lang}/trading/shareCFDS")
	public String shareCFDSnlang(HttpServletRequest request, @PathVariable("lang") String lang){
		setLanguageInSession(lang, request);
		return "trading/shareCFDS";
	}
	@RequestMapping(value="/{lang}/trading/crypto")
	public String cryptonlang(HttpServletRequest request, @PathVariable("lang") String lang){
		setLanguageInSession(lang, request);
		return "trading/crypto";
	}
	@RequestMapping(value="/{lang}/trading/etf")
	public String etfnlang(HttpServletRequest request, @PathVariable("lang") String lang){
		setLanguageInSession(lang, request);
		return "trading/etf";
	}
	@RequestMapping(value="/{lang}/socialTrading")
	public String socialTradingnlang(HttpServletRequest request, @PathVariable("lang") String lang){
		setLanguageInSession(lang, request);
		return "socialTrading/socialTrading";
	}
	@RequestMapping(value="/{lang}/tool/economicCalender")
	public String economicCalendernlang(HttpServletRequest request, @PathVariable("lang") String lang){
		setLanguageInSession(lang, request);
		return "troyTool/economicCalender";
	}
	@RequestMapping(value="/{lang}/tool/forexVps")
	public String forexVpsnlang(HttpServletRequest request, @PathVariable("lang") String lang){
		setLanguageInSession(lang, request);
		return "troyTool/forexVps";
	}
	@RequestMapping(value="/{lang}/tool/pipCalculator")
	public String pipCalculatornlang(HttpServletRequest request, @PathVariable("lang") String lang){
		setLanguageInSession(lang, request);
		return "troyTool/pipCalculator";
	}
	@RequestMapping(value="/{lang}/cs/cs")
	public String csnlang(HttpServletRequest request, @PathVariable("lang") String lang){
		setLanguageInSession(lang, request);
		return "cs/cs";
	}
	@RequestMapping(value="/{lang}/cs/notice")
	public String noticenlang(HttpServletRequest request, @PathVariable("lang") String lang, Model model){
		setLanguageInSession(lang, request);
		String idx = request.getParameter("idx");
		String pageIndex = request.getParameter("pageIndex");
		PaginationInfo pi = new PaginationInfo();
		if(Utils.isNull(pageIndex)) pi.setCurrentPageNo(1);
		else pi.setCurrentPageNo(Integer.parseInt(pageIndex));
		pi.setPageSize(5);
		pi.setRecordCountPerPage(10);
		EgovMap in = new EgovMap();
		in.put("first", pi.getFirstRecordIndex());
		in.put("record", pi.getRecordCountPerPage());
		in.put("lang", lang);
		pi.setTotalRecordCount((int)sampleDAO.select("selectNoticeListCnt",in));
		model.addAttribute("list", sampleDAO.list("selectNoticeList",in));
		model.addAttribute("pi", pi);
		model.addAttribute("idx", idx);
		model.addAttribute("lang", lang);
		return "cs/notice";
	}
	@RequestMapping(value="/{lang}/cs/qna")
	public String qnanlang(HttpServletRequest request, @PathVariable("lang") String lang){
		setLanguageInSession(lang, request);
		return "cs/qna";
	}
	@RequestMapping(value="/{lang}/cs/contactUS")
	public String contactUSnlang(HttpServletRequest request, @PathVariable("lang") String lang){
		setLanguageInSession(lang, request);
		return "cs/contactUS";
	}
	@RequestMapping(value="/{lang}/metaTrader4")
	public String metaTrader4nlang(HttpServletRequest request, @PathVariable("lang") String lang){
		setLanguageInSession(lang, request);
		return "metaTrader/metaTrader4";
	}
	@RequestMapping(value="/{lang}/metaTrader5")
	public String metaTrader5nlang(HttpServletRequest request, @PathVariable("lang") String lang){
		setLanguageInSession(lang, request);
		return "metaTrader/metaTrader5";
	}
	@RequestMapping(value="/{lang}/legal")
	public String legalnlang(HttpServletRequest request, @PathVariable("lang") String lang){
		setLanguageInSession(lang, request);
		return "legal/legal";
	}
	@RequestMapping(value="/{lang}/funds")
	public String fundsnlang(HttpServletRequest request, @PathVariable("lang") String lang){
		setLanguageInSession(lang, request);
		return "legal/funds";
	}
	@RequestMapping(value="/{lang}/privacyPolicy")
	public String privacyPolicy(HttpServletRequest request, @PathVariable("lang") String lang){
		setLanguageInSession(lang, request);
		return "privacyPolicy";
	}
	
	private String setLanguageInSessionNolang(HttpServletRequest request) {
	    HttpSession session = request.getSession();
	    String lang = ""+session.getAttribute("lang");
	    if(Utils.isNull(lang)) lang="en";  
	    String uri = request.getRequestURI().substring(request.getContextPath().length());
	    return "redirect:/" + lang + uri;
    }

	@RequestMapping(value="/main") // 맨처음 나올 페이지 
	public String main(HttpServletRequest request){
	    return setLanguageInSessionNolang(request);
	}
	@RequestMapping(value="/company")
	public String company(HttpServletRequest request){
	    return setLanguageInSessionNolang(request);
	}
	@RequestMapping(value="/trading/forex")
	public String forex(HttpServletRequest request){
	    return setLanguageInSessionNolang(request);
	}
	@RequestMapping(value="/trading/commodotles")
	public String commodotles(HttpServletRequest request){
	    return setLanguageInSessionNolang(request);
	}	
	@RequestMapping(value="/trading/metals")
	public String metals(HttpServletRequest request){
	    return setLanguageInSessionNolang(request);
	}
	@RequestMapping(value="/trading/indices")
	public String indices(HttpServletRequest request){
	    return setLanguageInSessionNolang(request);
	}
	@RequestMapping(value="/trading/shareCFDS")
	public String shareCFDS(HttpServletRequest request){
	    return setLanguageInSessionNolang(request);
	}
	@RequestMapping(value="/trading/crypto")
	public String crypto(HttpServletRequest request){
	    return setLanguageInSessionNolang(request);
	}
	@RequestMapping(value="/trading/etf")
	public String etf(HttpServletRequest request){
	    return setLanguageInSessionNolang(request);
	}
	@RequestMapping(value="/socialTrading")
	public String socialTrading(HttpServletRequest request){
	    return setLanguageInSessionNolang(request);
	}
	@RequestMapping(value="/tool/economicCalender")
	public String economicCalender(HttpServletRequest request){
	    return setLanguageInSessionNolang(request);
	}
	@RequestMapping(value="/tool/forexVps")
	public String forexVps(HttpServletRequest request){
	    return setLanguageInSessionNolang(request);
	}
	@RequestMapping(value="/tool/pipCalculator")
	public String pipCalculator(HttpServletRequest request){
	    return setLanguageInSessionNolang(request);
	}
	@RequestMapping(value="/cs/cs")
	public String cs(HttpServletRequest request){
	    return setLanguageInSessionNolang(request);
	}
	@RequestMapping(value="/cs/notice")
	public String notice(HttpServletRequest request){
	    return setLanguageInSessionNolang(request);
	}
	@RequestMapping(value="/cs/qna")
	public String qna(HttpServletRequest request){
	    return setLanguageInSessionNolang(request);
	}
	@RequestMapping(value="/cs/contactUS")
	public String contactUS(HttpServletRequest request){
	    return setLanguageInSessionNolang(request);
	}
	@RequestMapping(value="/metaTrader4")
	public String metaTrader4(HttpServletRequest request){
	    return setLanguageInSessionNolang(request);
	}
	@RequestMapping(value="/metaTrader5")
	public String metaTrader5(HttpServletRequest request){
	    return setLanguageInSessionNolang(request);
	}
	@RequestMapping(value="/legal")
	public String legal(HttpServletRequest request){
	    return setLanguageInSessionNolang(request);
	}
	@RequestMapping(value="/funds")
	public String funds(HttpServletRequest request){
	    return setLanguageInSessionNolang(request);
	}
	@RequestMapping(value="/privacyPolicy")
	public String privacyPolicy(HttpServletRequest request){
	    return setLanguageInSessionNolang(request);
	}
}
