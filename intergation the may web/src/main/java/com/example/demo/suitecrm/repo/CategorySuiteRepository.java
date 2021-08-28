package com.example.demo.suitecrm.repo;

import com.example.demo.suitecrm.data.ProductCategorySuiteDTO;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.ParameterMode;
import javax.persistence.PersistenceContext;
import javax.persistence.StoredProcedureQuery;
import java.util.List;

@Repository
public class CategorySuiteRepository {
    @PersistenceContext(unitName = "suite")
    EntityManager em;

    public List<ProductCategorySuiteDTO>getList(){
        StoredProcedureQuery query=em.createStoredProcedureQuery("sp_select_product_category_suite",ProductCategorySuiteDTO.class);
        List<ProductCategorySuiteDTO> result=query.getResultList();
        return result;
    }

    public void insertList(List<ProductCategorySuiteDTO> categories){
        for (ProductCategorySuiteDTO category:categories){
            StoredProcedureQuery query=em.createStoredProcedureQuery("sp_insert_category_suite");
            query.registerStoredProcedureParameter(1,String.class, ParameterMode.IN);
            query.registerStoredProcedureParameter(2,String.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(3,String.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(4,Boolean.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(5,String.class,ParameterMode.IN);
            query.setParameter(1,category.getId());
            query.setParameter(2,category.getName());
            query.setParameter(3,category.getDescription());
            query.setParameter(4,category.isParent());
            query.setParameter(5,category.getParentCategoryId());
            query.execute();
        }
    }
}
