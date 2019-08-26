package br.com.itsmemario.ecordel.cordel;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class CordelService {
	
	private CordelRepository repository;

	@Autowired
	public CordelService(CordelRepository repository) {
		super();
		this.repository = repository;
	}

	public Page<Cordel> getCordels(Pageable pageable) {
		return repository.findAll(pageable);
	}
	
	public Cordel save(Cordel cordel) {
		return repository.save(cordel);
	}
	
	

}
