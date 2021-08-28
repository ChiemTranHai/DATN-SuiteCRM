package com.example.demo.themay.repo;

import com.example.demo.suitecrm.data.ProductCategorySuiteDTO;
import com.example.demo.themay.data.ProductCategoryTheMayDTO;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.ParameterMode;
import javax.persistence.PersistenceContext;
import javax.persistence.StoredProcedureQuery;
import java.util.List;

@Repository
public class CategoryTheMayRepository {
    @PersistenceContext(unitName = "theMay")
    EntityManager em;

    public List<ProductCategoryTheMayDTO> getList(){
        StoredProcedureQuery query=em.createStoredProcedureQuery("sp_select_category_the_may", ProductCategoryTheMayDTO.class);
        List<ProductCategoryTheMayDTO> res=query.getResultList();
        return res;
    }

    public void insertList(List<ProductCategoryTheMayDTO> categories){
        for (ProductCategoryTheMayDTO category:categories){
            StoredProcedureQuery query=em.createStoredProcedureQuery("sp_insert_category");
            query.registerStoredProcedureParameter(1,Long.class, ParameterMode.IN);
            query.registerStoredProcedureParameter(2,String.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(3,String.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(4,Long.class,ParameterMode.IN);
            query.setParameter(1,category.getId());
            query.setParameter(2,category.getName());
            query.setParameter(3,category.getDescription());
            query.setParameter(4,category.getParentId());
            query.execute();
        }
    }
}
