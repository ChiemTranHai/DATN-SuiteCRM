package com.example.demo.suitecrm.repo;

import com.example.demo.themay.data.ContactDTO;
import com.example.demo.themay.data.InvoicesDTO;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.ParameterMode;
import javax.persistence.PersistenceContext;
import javax.persistence.StoredProcedureQuery;
import java.util.List;

@Repository
public class InvoicesSuiteRepository {
    @PersistenceContext(unitName = "suite")
    EntityManager em;

    public void insertList(List<InvoicesDTO> invoices){
        for (InvoicesDTO invoice:invoices){
            StoredProcedureQuery query=em.createStoredProcedureQuery("sp_insert_invoices_suite");
            query.registerStoredProcedureParameter(1,Long.class, ParameterMode.IN);
            query.registerStoredProcedureParameter(2,Double.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(3,Double.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(4,Double.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(5,Double.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(6,Double.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(7,String.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(8,String.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(9,String.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(10,String.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(11,String.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(12,Long.class,ParameterMode.IN);
            query.setParameter(1,invoice.getId());
            query.setParameter(2,invoice.getTotalSales());
            query.setParameter(3,invoice.getTaxTotal());
            query.setParameter(4,invoice.getShippingTotal());
            query.setParameter(5,invoice.getDiscountAmount());
            query.setParameter(6,invoice.getShippingTax());
            query.setParameter(7,invoice.getCountry());
            query.setParameter(8,invoice.getPostcode());
            query.setParameter(9,invoice.getCity());
            query.setParameter(10,invoice.getState());
            query.setParameter(11,invoice.getStatus());
            query.setParameter(12,invoice.getCustomerId());
            query.execute();
        }
    }
}
