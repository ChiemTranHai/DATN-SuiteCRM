package com.example.demo.Api;

import com.example.demo.suitecrm.data.ProductSuiteDTO;
import com.example.demo.suitecrm.service.CategorySuiteService;
import com.example.demo.suitecrm.service.ContactSuiteService;
import com.example.demo.suitecrm.service.InvoicesSuiteService;
import com.example.demo.suitecrm.service.ProductSuiteService;
import com.example.demo.themay.data.ProductCategoryTheMayDTO;
import com.example.demo.themay.data.ProductTheMayDTO;
import com.example.demo.themay.service.CategoryTheMayService;
import com.example.demo.themay.service.ProductTheMayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
@RestController
@RequestMapping("/product")
public class Api {
    @Autowired
    ProductTheMayService productTheMayService;

    @Autowired
    CategoryTheMayService categoryTheMayService;

    @Autowired
    ProductSuiteService productSuiteService;

    @Autowired
    CategorySuiteService categorySuiteService;

    @Autowired
    ContactSuiteService contactSuiteService;

    @Autowired
    InvoicesSuiteService invoicesSuiteService;

    @GetMapping("/get-product")
    public List<ProductTheMayDTO> getList(){
        return productTheMayService.getList();
    }

    @GetMapping("/get-category")
    public List<ProductCategoryTheMayDTO> getListCategory(){
        return categoryTheMayService.getList();
    }

    @GetMapping("/get-product-suite")
    public List<ProductSuiteDTO> getSuiteList(){
        return productSuiteService.getList();
    }

    @GetMapping("/insert-list")
    public String insertList(){
        categorySuiteService.insertList();
        return "Success insert suite";
    }

    @GetMapping("/insert-list-themay")
    public String insertListTheMay(){
        categoryTheMayService.insertList();
        return "Success insert theMay";
    }

    @GetMapping("/insert-product-suite")
    public String innsertProductSute(){
        productSuiteService.insertList();
        return "Secces insert product Suite";
    }

    @GetMapping("/insert-product-themay")
    public String insertProductTheMay(){
        productTheMayService.insertList();
        return "Succes insert product themay";
    }

    @GetMapping("/insert-contact-suite")
    public String insertContactSuite(){
        contactSuiteService.insertList();
        return "Succes insert contact suite";
    }

    @GetMapping("/insert-invoice-suite")
    public String insertInvoiceSuite(){
        invoicesSuiteService.insertList();
        return "Succes insert invoice suite";
    }
}
