package com.example.demo.themay.service;

import com.example.demo.convert.Convert;
import com.example.demo.suitecrm.data.ProductSuiteDTO;
import com.example.demo.suitecrm.service.ProductSuiteService;
import com.example.demo.themay.data.ContactDTO;
import com.example.demo.themay.data.ProductTheMayDTO;
import com.example.demo.themay.repo.ProductTheMayRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
@Service
public class ProductTheMayService {
    @Autowired
    ProductTheMayRepository productRepository;

    @Autowired
    ProductSuiteService productSuiteService;

    @Autowired
    Convert convert;

    public List<ProductTheMayDTO> getList(){
        return productRepository.getList();
    }

    public void insertList(){
        List<ProductTheMayDTO> productsTheMay=new ArrayList<>();
        List<ProductSuiteDTO> productsSuite=productSuiteService.getList();
        productsTheMay=convert.productSuiteToTheMay(productsSuite);
        productRepository.insertList(productsTheMay);
    }

}
