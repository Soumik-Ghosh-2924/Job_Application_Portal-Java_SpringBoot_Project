package com.example.JobApp.controller;

import java.util.List;


import com.example.JobApp.JobApplicationForm.ApplicationForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.JobApp.model.JobPost;
import com.example.JobApp.service.JobService;

@Controller
public class JobController {

	@Autowired
	private JobService service;


	public JobController(JobService service)
	{
		this.service=service;
	}

	// ************************************************************************

	@RequestMapping({"/","/home"})
	public String home() {
		return "home";
	}

	// ************************************************************************

	@RequestMapping("/addjob")
	public String addJob() {
		return "addjob";
	}

	// ************************************************************************

	// controller method for getting all job posts
	@GetMapping("/viewalljobs")
	public String viewJobs(Model model) {

		List<JobPost> jobPosts = service.returnAllJobPosts();
		model.addAttribute("jobPosts", jobPosts);
		return "viewalljobs";
	}
	
	// ************************************************************************
	//controller to handle the job application form
	@PostMapping("/handleForm")
	public String handleAddJobForm(JobPost jobPost,Model model) {
		model.addAttribute("jobPost", jobPost);
		service.addJobPost(jobPost);
		//System.out.println(jobPost);
		  return "success";
		
	}



	//*************************************************************************
	//controller to apply for the job post
	@GetMapping("/applyJob")
	public String showApplicationForm(@RequestParam("postId") Long postId, Model model)
	{
		model.addAttribute("postId", postId);
		model.addAttribute("applicationForm", new ApplicationForm());
		return "applyJob";
	}




	//***************************************************************************
	//Controller to submit the job application
	@PostMapping("/submitApplication")
	public String submitApplication(@ModelAttribute("applicationForm") ApplicationForm applicationForm, Model model)
	{
		model.addAttribute("message", "Your candidature has been applied for the post. Further notice will be sent via email. Thank You.");
		return "applicationSuccess";
	}


	//***************************************************************************
	//Finding the job related to the keyword search
//	@GetMapping("/jobs/search")
//	public String searchJobs(@RequestParam("keyword") String keyword, Model model )
//	{
//		List<JobPost> jobs = service.searchJobs(keyword);
//		model.addAttribute("jobs", service.searchJobs(keyword)	);
//		model.addAttribute("keyword", keyword);
//		return "searchJobs";
//	}
}
