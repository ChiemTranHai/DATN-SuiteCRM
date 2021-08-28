package com.example.demo.themay.service;

import com.example.demo.themay.data.InvoicesDTO;
import com.example.demo.themay.repo.InvoicesTheMayRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class InvoicesTheMayService {
    @Autowired
    InvoicesTheMayRepository invoicesTheMayRepository;
    public List<InvoicesDTO> getList(){
        return invoicesTheMayRepository.getList();
    }
}
