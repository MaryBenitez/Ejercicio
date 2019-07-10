package com.uca.capas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uca.capas.domain.Contribuyente;
import com.uca.capas.repositories.ContribuyenteRepository;

@Service
public class ContribuyenteImpl implements ContribuyenteService{
	
	@Autowired
	ContribuyenteRepository contR;

	@Override
	public List<Contribuyente> findAll() {
		// TODO Auto-generated method stub
		return contR.findAll();
	}

}
