package com.campeonato.brasileirao.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.campeonato.brasileirao.model.Brasileirao;
import com.campeonato.brasileirao.repository.BrasileiraoRepository;

@RestController
@RequestMapping("/clubes")
@CrossOrigin("*")
public class BrasileiraoController {

	@Autowired
	private BrasileiraoRepository repository;
	
	@GetMapping
	public ResponseEntity<List<Brasileirao>> GetAll(){
		return ResponseEntity.ok(repository.findAll());
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<Brasileirao> GetById(@PathVariable long id){
		return repository.findById(id)
				.map(resp -> ResponseEntity.ok(resp))
				.orElse(ResponseEntity.notFound().build());
	}
	
	@GetMapping("/time/{time}")
	public ResponseEntity <List<Brasileirao>> GetBytitulo (@PathVariable String titulo){
		return ResponseEntity.ok(repository.findAllByTituloContainingIgnoreCase(titulo));
	}
	
	@PostMapping
	public ResponseEntity <Brasileirao> post (@RequestBody Brasileirao brasileiro){
		return ResponseEntity.status(HttpStatus.CREATED).body(repository.save(brasileiro));
	}
	
	@PutMapping
	public ResponseEntity <Brasileirao> put (@RequestBody Brasileirao brasileiro){
		return ResponseEntity.status(HttpStatus.OK).body(repository.save(brasileiro));
	}
	
	@DeleteMapping
	public void delete(@PathVariable long id) {
		repository.deleteById(id);
	}
}
