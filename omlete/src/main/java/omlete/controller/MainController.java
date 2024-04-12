package omlete.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.RequiredArgsConstructor;
import omlete.service.ContentsService;
import omlete.service.ReviewService;

@Controller
@RequiredArgsConstructor
public class MainController {
	private final ContentsService contentsService;
	private final ReviewService reviewService; 
	
	@RequestMapping("/")
	public String main(Model model) {
		model.addAttribute("movieList", contentsService.getMovieList());
		model.addAttribute("movieListD", contentsService.getContentsListByOrder("DESC"));
		model.addAttribute("movieListA", contentsService.getContentsListByOrder("ASC"));
		
		//model.addAttribute("reviewListOrder", reviewService.getReviewListOrder());
		
		return "main/main_body";
	}
	
	@RequestMapping(value = "/serise", method = RequestMethod.GET)
	public String mainSerise(Model model) {
		/*
		model.addAttribute("seriseList", contentsService.getSeriseList());
		model.addAttribute("seriseListD", contentsService.getContentsListByOrder("DESC"));
		model.addAttribute("seriseListA", contentsService.getContentsListByOrder("ASC"));
		
		//model.addAttribute("reviewListOrder", reviewService.getReviewListOrder());
		*/
		
		model.addAttribute("movieList", contentsService.getMovieList());
		model.addAttribute("movieListD", contentsService.getContentsListByOrder("DESC"));
		model.addAttribute("movieListA", contentsService.getContentsListByOrder("ASC"));
		
		return "main/main_series";
	}
}
