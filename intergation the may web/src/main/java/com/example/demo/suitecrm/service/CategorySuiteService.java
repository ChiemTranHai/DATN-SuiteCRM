package com.example.demo.suitecrm.service;

import com.example.demo.convert.Convert;
import com.example.demo.suitecrm.data.ProductCategorySuiteDTO;
import com.example.demo.suitecrm.data.ProductSuiteDTO;
import com.example.demo.suitecrm.repo.CategorySuiteRepository;
import com.example.demo.themay.data.ProductCategoryTheMayDTO;
import com.example.demo.themay.repo.CategoryTheMayRepository;
import com.example.demo.themay.service.CategoryTheMayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CategorySuiteService {
    @Autowired
    CategoryTheMayService categoryTheMayService;

    @Autowired
    CategorySuiteRepository categorySuiteRepository;

    @Autowired
    Convert convert;

    public List<ProductCategorySuiteDTO>getList(){
        return categorySuiteRepository.getList();
    }

    public void insertList(){
        List<ProductCategorySuiteDTO> categoriesSuite=new ArrayList<>();
        List<ProductCategoryTheMayDTO> categoriesTheMay=categoryTheMayService.getList();
        categoriesSuite=convert.theMayToSuite(categoriesTheMay);
        categorySuiteRepository.insertList(categoriesSuite);
    }
}
