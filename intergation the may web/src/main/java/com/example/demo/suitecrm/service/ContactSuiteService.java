package com.example.demo.suitecrm.service;

import com.example.demo.suitecrm.repo.ContactSuiteRepository;
import com.example.demo.themay.data.ContactDTO;
import com.example.demo.themay.service.ContactTheMayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class ContactSuiteService {
    @Autowired
    ContactSuiteRepository contactSuiteRepository;

    @Autowired
    ContactTheMayService contactTheMayService;

    public void insertList(){
        List<ContactDTO> contacts=contactTheMayService.getList();
        contactSuiteRepository.insertList(contacts);
    }
}
