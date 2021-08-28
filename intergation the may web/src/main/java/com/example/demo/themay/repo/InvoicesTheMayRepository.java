package com.example.demo.themay.repo;

import com.example.demo.themay.data.ContactDTO;
import com.example.demo.themay.data.InvoicesDTO;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.StoredProcedureQuery;
import java.util.List;

@Repository
public class InvoicesTheMayRepository {
    @PersistenceContext(unitName = "theMay")
    EntityManager em;

    public List<InvoicesDTO> getList(){
        StoredProcedureQuery query=em.createStoredProcedureQuery("sp_select_invoices", InvoicesDTO.class);
        List<InvoicesDTO> res=query.getResultList();
        return res;
    }
}
