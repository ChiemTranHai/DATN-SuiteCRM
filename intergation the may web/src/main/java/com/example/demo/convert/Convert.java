package com.example.demo.convert;

import com.example.demo.suitecrm.data.ProductCategorySuiteDTO;
import com.example.demo.suitecrm.data.ProductSuiteDTO;
import com.example.demo.themay.data.ProductCategoryTheMayDTO;
import com.example.demo.themay.data.ProductTheMayDTO;
import net.bytebuddy.description.method.ParameterList;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class Convert {
    public List<ProductCategorySuiteDTO>theMayToSuite(List<ProductCategoryTheMayDTO> categoriesTheMay){
        List<ProductCategorySuiteDTO> categoriesSuite=new ArrayList<>();
        for (ProductCategoryTheMayDTO categoryTheMay:categoriesTheMay){
            ProductCategorySuiteDTO categorySuite=new ProductCategorySuiteDTO();
            categorySuite.setId(categoryTheMay.getId().toString());
            categorySuite.setName(categoryTheMay.getName());
            categorySuite.setDescription(categoryTheMay.getDescription());
            categorySuite.setParent(categoryTheMay.isParent());
            categorySuite.setParentCategoryId(categoryTheMay.getParentId().toString());
            categoriesSuite.add(categorySuite);
        }
        return categoriesSuite;
    }
    public List<ProductCategoryTheMayDTO> suiteToTheMay(List<ProductCategorySuiteDTO> categoriesSuite){
        List<ProductCategoryTheMayDTO> categoriesTheMay=new ArrayList<>();
        for (ProductCategorySuiteDTO categorySuite:categoriesSuite){
            ProductCategoryTheMayDTO categoryTheMay=new ProductCategoryTheMayDTO();
            categoryTheMay.setId(Long.parseLong(categorySuite.getId()));
            categoryTheMay.setName(categorySuite.getName());
            categoryTheMay.setDescription(categorySuite.getDescription());
            categoryTheMay.setParent(categorySuite.isParent());
            categoryTheMay.setParentId(Long.parseLong(categorySuite.getParentCategoryId()));
            categoriesTheMay.add(categoryTheMay);
        }
        return categoriesTheMay;
    }
    public List<ProductSuiteDTO> productTheMayToSuite(List<ProductTheMayDTO> productsTheMay){
        List<ProductSuiteDTO> productsSuite=new ArrayList<>();
        for (ProductTheMayDTO productTheMay:productsTheMay){
            ProductSuiteDTO productSuite=new ProductSuiteDTO();
            productSuite.setId(productTheMay.getId().toString());
            productSuite.setName(productTheMay.getName());
            productSuite.setDescription(productTheMay.getDescription());
            productSuite.setCost(productTheMay.getCost());
            productSuite.setPrice(productTheMay.getPrice());
            productSuite.setUrl(productTheMay.getUrl());
            productSuite.setProductCategoryId(productTheMay.getProductCategoryId().toString());
            productSuite.setCount(productTheMay.getCount());
            productsSuite.add(productSuite);
        }
        return productsSuite;
    }
    public List<ProductTheMayDTO> productSuiteToTheMay(List<ProductSuiteDTO> productsSuite){
        List<ProductTheMayDTO> productsTheMay=new ArrayList<>();
        for (ProductSuiteDTO productSuite:productsSuite){
            ProductTheMayDTO productTheMay=new ProductTheMayDTO();
            productTheMay.setId(Long.parseLong(productSuite.getId()));
            productTheMay.setName(productSuite.getName());
            productTheMay.setDescription(productSuite.getDescription());
            productTheMay.setCost(productSuite.getCost());
            productTheMay.setPrice(productSuite.getPrice());
            productTheMay.setUrl(productSuite.getUrl());
            productTheMay.setProductCategoryId(Long.parseLong(productSuite.getProductCategoryId()));
            productTheMay.setCount(productSuite.getCount());
            productsTheMay.add(productTheMay);
        }
        return productsTheMay;
    }
}
