package com.example.demo.suitecrm.service;

import com.example.demo.suitecrm.repo.ContactSuiteRepository;
import com.example.demo.suitecrm.repo.InvoicesSuiteRepository;
import com.example.demo.themay.data.ContactDTO;
import com.example.demo.themay.data.InvoicesDTO;
import com.example.demo.themay.service.ContactTheMayService;
import com.example.demo.themay.service.InvoicesTheMayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class InvoicesSuiteService {
    @Autowired
    InvoicesSuiteRepository invoicesSuiteRepository;

    @Autowired
    InvoicesTheMayService invoicesTheMayService;
    public void insertList(){
        List<InvoicesDTO> invoices=invoicesTheMayService.getList();
        invoicesSuiteRepository.insertList(invoices);
    }
}
