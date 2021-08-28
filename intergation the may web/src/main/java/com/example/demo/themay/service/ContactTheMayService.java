package com.example.demo.themay.service;

import com.example.demo.themay.data.ContactDTO;
import com.example.demo.themay.repo.ContactTheMayRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ContactTheMayService {
    @Autowired
    ContactTheMayRepository contactTheMayRepository;

    public List<ContactDTO> getList(){
        return contactTheMayRepository.getList();
    }
}
