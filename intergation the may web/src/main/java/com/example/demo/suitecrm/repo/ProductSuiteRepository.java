package com.example.demo.suitecrm.repo;

import com.example.demo.suitecrm.data.ProductCategorySuiteDTO;
import com.example.demo.suitecrm.data.ProductSuiteDTO;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.ParameterMode;
import javax.persistence.PersistenceContext;
import javax.persistence.StoredProcedureQuery;
import java.util.List;

@Repository
public class ProductSuiteRepository {
    @PersistenceContext(unitName = "suite")
    EntityManager em;

    public List<ProductSuiteDTO> getList() {
        StoredProcedureQuery query = em.createStoredProcedureQuery("sp_select_product_suite", ProductSuiteDTO.class);
        List<ProductSuiteDTO> res = query.getResultList();
        return res;
    }
    public void insertList(List<ProductSuiteDTO> products){
        for(ProductSuiteDTO product:products){
            StoredProcedureQuery query=em.createStoredProcedureQuery("sp_insert_product_suite");
            query.registerStoredProcedureParameter(1,String.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(2,String.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(3,String.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(4,Float.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(5,Float.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(6,String.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(7,String.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(8,Long.class,ParameterMode.IN);
            query.setParameter(1,product.getId());
            query.setParameter(2,product.getName());
            query.setParameter(3,product.getDescription());
            query.setParameter(4,product.getCost());
            query.setParameter(5,product.getPrice());
            query.setParameter(6,product.getUrl());
            query.setParameter(7,product.getProductCategoryId());
            if (product.getCount()==null){
                product.setCount((long) 0);
                query.setParameter(8,product.getCount());
            }
            else{
                query.setParameter(8,product.getCount());
            }
            query.execute();
        }
    }
}
