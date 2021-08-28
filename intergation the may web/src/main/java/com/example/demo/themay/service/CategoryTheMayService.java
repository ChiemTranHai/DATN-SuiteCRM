package com.example.demo.themay.service;

import com.example.demo.convert.Convert;
import com.example.demo.suitecrm.data.ProductCategorySuiteDTO;
import com.example.demo.suitecrm.service.CategorySuiteService;
import com.example.demo.themay.data.ProductCategoryTheMayDTO;
import com.example.demo.themay.repo.CategoryTheMayRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
@Service
public class CategoryTheMayService {
    @Autowired
    CategoryTheMayRepository categoryTheMayRepository;

    @Autowired
    CategorySuiteService categorySuiteService;

    @Autowired
    Convert convert;

    public List<ProductCategoryTheMayDTO> getList(){
        return categoryTheMayRepository.getList();
    }

    public void insertList(){
        List<ProductCategoryTheMayDTO> categoriesTheMay=new ArrayList<>();
        List<ProductCategorySuiteDTO> categoriesSuite=categorySuiteService.getList();
        categoriesTheMay=convert.suiteToTheMay(categoriesSuite);
        categoryTheMayRepository.insertList(categoriesTheMay);
    }
}
