package com.campeonato.brasileirao.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.campeonato.brasileirao.model.Brasileirao;

@Repository
public interface BrasileiraoRepository extends JpaRepository<Brasileirao, Long>{
	
	public List<Brasileirao> findAllByTituloContainingIgnoreCase (String Clube);

}
