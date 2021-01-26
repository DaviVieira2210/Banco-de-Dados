package com.skillandmindset.skills.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/Skills")
public class Skills {

	@GetMapping
	public String skill() {
		return "Orientação ao detalhe e persistência";
	}
}
