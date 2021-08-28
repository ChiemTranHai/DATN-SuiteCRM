package com.example.demo.themay.repo;

import com.example.demo.themay.data.ContactDTO;
import com.example.demo.themay.data.ProductTheMayDTO;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.StoredProcedureQuery;
import java.util.List;

@Repository
public class ContactTheMayRepository {
    @PersistenceContext(unitName = "theMay")
    EntityManager em;

    public List<ContactDTO> getList(){
        StoredProcedureQuery query=em.createStoredProcedureQuery("sp_select_contact", ContactDTO.class);
        List<ContactDTO> res=query.getResultList();
        return res;
    }
}
