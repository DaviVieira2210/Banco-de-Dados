package com.goals.goals.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/LearningObjectives")
public class LearningObjectives {

	@GetMapping
	public String goal() {
		return "Aplicar os conhecimentos adquiridos nas semanas anteriores, "
				+ "colaborar em todas as atividades que serão propostas e "
				+ "absorver ao máximo tudo que nos será apresentado";
	}
}
