package org.cmg.controller;

import java.net.URLEncoder;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.cmg.dto.BoardVO;
import org.cmg.dto.Pagenation;
import org.cmg.service.BoardService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Controller
@RequestMapping("/board")
public class BoardController {	
	@Inject
	private BoardService service;
	
	@RequestMapping(value = "/boardlist", method = RequestMethod.GET)
	public void boardlist(@RequestParam("page") int page, @RequestParam("search") String search, Model model) throws Exception {
		int pagecnt = service.count(search);
		if(pagecnt<5) pagecnt = 1;
		else pagecnt = pagecnt%5 == 0?pagecnt/5:pagecnt/5+1;
		Pagenation p = new Pagenation(page, pagecnt, search);
		
		model.addAttribute("list", service.listAll(p));
		model.addAttribute("pagenation", p);
	}
	
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public void readGET(@RequestParam("b_id") int b_id, Model model) throws Exception {
		service.cntup(b_id);
		model.addAttribute("boardVO", service.read(b_id));
	}
	
	@RequestMapping(value = "/remove", method = RequestMethod.GET)
	public String remove(@RequestParam("b_id") int b_id) throws Exception{
		service.remove(b_id);
		return "redirect:/board/boardlist?search=&page=1";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registerGET() throws Exception{ }
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPOST(RedirectAttributes rttr, HttpServletRequest req) throws Exception{
		String path = req.getSession().getServletContext().getRealPath("/resources/img");
		BoardVO vo = null;
		MultipartRequest mr = null;
		String photo = null;
		try {
			mr = new MultipartRequest(req, path, 30 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy());
			photo = mr.getFilesystemName("b_img");
			photo = URLEncoder.encode(photo, "utf-8");
			photo = photo.replace("+", " ");
			vo = new BoardVO(mr.getParameter("b_title"), mr.getParameter("b_text"), photo, 
						mr.getParameter("b_writer"), 0);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(vo.getB_writer().equals("")) {
			rttr.addFlashAttribute("msg", "session_end");
			return "redirect:/login/signin";
		}
		service.register(vo, req); 
		return "redirect:/board/boardlist?search=&page=1";
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void modifyGET(@RequestParam("b_id") int b_id, Model model) throws Exception {
		
		model.addAttribute("boardVO", service.read(b_id));
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modifyPOST(@RequestParam("b_id") int b_id, RedirectAttributes rttr, HttpServletRequest req) throws Exception{
		String path = req.getSession().getServletContext().getRealPath("/resources/img");
		BoardVO vo = null;
		MultipartRequest mr = null;
		String photo = null;
		try {
			mr = new MultipartRequest(req, path, 30 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy());
			photo = mr.getFilesystemName("b_img");
			photo = URLEncoder.encode(photo, "utf-8");
			photo = photo.replace("+", " ");
			vo = new BoardVO(b_id, mr.getParameter("b_title"), mr.getParameter("b_text"), photo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		service.modify(vo);
		return "redirect:/board/read?b_id="+vo.getB_id();
	}
}
