package com.example.demo.themay.repo;

import com.example.demo.suitecrm.data.ProductSuiteDTO;
import com.example.demo.themay.data.ProductTheMayDTO;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.ParameterMode;
import javax.persistence.PersistenceContext;
import javax.persistence.StoredProcedureQuery;
import java.util.List;

@Repository
public class ProductTheMayRepository {
    @PersistenceContext(unitName = "theMay")
    EntityManager em;
    public List<ProductTheMayDTO> getList(){
        StoredProcedureQuery query=em.createStoredProcedureQuery("select_product_the_may", ProductTheMayDTO.class);
        List<ProductTheMayDTO> res=query.getResultList();
        return res;
    }

    public void insertList(List<ProductTheMayDTO> products){
        for(ProductTheMayDTO product:products){
            StoredProcedureQuery query=em.createStoredProcedureQuery("sp_insert_product");
            query.registerStoredProcedureParameter(1,Long.class, ParameterMode.IN);
            query.registerStoredProcedureParameter(2,String.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(3,String.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(4,Float.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(5,Float.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(6,String.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(7,Long.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(8,Long.class,ParameterMode.IN);
            query.setParameter(1,product.getId());
            query.setParameter(2,product.getName());
            query.setParameter(3,product.getDescription());
            query.setParameter(4,product.getCost());
            query.setParameter(5,product.getPrice());
            query.setParameter(6,product.getUrl());
            query.setParameter(7,product.getProductCategoryId());
            query.setParameter(8,product.getCount());
            query.execute();
        }
    }
}
