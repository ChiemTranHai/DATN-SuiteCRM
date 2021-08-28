package com.example.demo.suitecrm.service;

import com.example.demo.convert.Convert;
import com.example.demo.suitecrm.data.ProductCategorySuiteDTO;
import com.example.demo.suitecrm.data.ProductSuiteDTO;
import com.example.demo.suitecrm.repo.ProductSuiteRepository;
import com.example.demo.themay.data.ProductCategoryTheMayDTO;
import com.example.demo.themay.data.ProductTheMayDTO;
import com.example.demo.themay.repo.ProductTheMayRepository;
import com.example.demo.themay.service.ProductTheMayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
@Service
public class ProductSuiteService {
    @Autowired
    Convert convert;

    @Autowired
    ProductSuiteRepository productRepository;

    @Autowired
    ProductTheMayService productTheMayService;

    public List<ProductSuiteDTO> getList(){
        return productRepository.getList();
    }

    public void insertList(){
        List<ProductSuiteDTO> productsSuite=new ArrayList<>();
        List<ProductTheMayDTO> productsTheMay=productTheMayService.getList();
        productsSuite=convert.productTheMayToSuite(productsTheMay);
        productRepository.insertList(productsSuite);
    }
}
