package com.jforce;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Homecontroller {

	@GetMapping({"/","home"})
	public String Home() {
		return "Applixcation running on server";
	}
	
	@GetMapping("/test")
	public String tesr() {
		return "Applixcation running on Testing Mode";
	}
}
