package com.campeonato.brasileirao.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "brasileirao")
public class Brasileirao {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@NotNull
	@Size(min = 2, max = 30)
	private String titulo;
	
	@NotNull
	private int pts;
	
	@NotNull
	private int der;
	
	@NotNull
	private int vit;

	@NotNull
	private int e;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public int getPts() {
		return pts;
	}

	public void setPts(int pts) {
		this.pts = pts;
	}

	public int getDer() {
		return der;
	}

	public void setDer(int der) {
		this.der = der;
	}

	public int getVit() {
		return vit;
	}

	public void setVit(int vit) {
		this.vit = vit;
	}

	public int getE() {
		return e;
	}

	public void setE(int e) {
		this.e = e;
	}

	
}
