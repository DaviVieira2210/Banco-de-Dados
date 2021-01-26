package com.pharmaceuticalCenter.pharmacy.repository;

import java.util.List;

import com.pharmaceuticalCenter.pharmacy.model.Produtos;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProdutoRepository extends JpaRepository<Produtos, Long>{

	public List<Produtos> findAllByTituloContainingIgnoreCase (String titulo);
}
