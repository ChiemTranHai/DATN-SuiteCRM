package com.example.demo.suitecrm.repo;

import com.example.demo.themay.data.ContactDTO;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.ParameterMode;
import javax.persistence.PersistenceContext;
import javax.persistence.StoredProcedureQuery;
import java.util.List;

@Repository
public class ContactSuiteRepository {
    @PersistenceContext(unitName = "suite")
    EntityManager em;

    public void insertList(List<ContactDTO> contacts){
        for (ContactDTO contact:contacts){
            StoredProcedureQuery query=em.createStoredProcedureQuery("sp_insert_contact_suite");
            query.registerStoredProcedureParameter(1,String.class, ParameterMode.IN);
            query.registerStoredProcedureParameter(2,String.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(3,String.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(4,String.class, ParameterMode.IN);
            query.registerStoredProcedureParameter(5,String.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(6,String.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(7,String.class,ParameterMode.IN);
            query.registerStoredProcedureParameter(8,Long.class,ParameterMode.IN);
            query.setParameter(1,contact.getEmail());
            query.setParameter(2,contact.getFirstName());
            query.setParameter(3,contact.getLastName());
            query.setParameter(4,contact.getCity());
            query.setParameter(5,contact.getState());
            query.setParameter(6,contact.getPostcode());
            query.setParameter(7,contact.getCountry());
            query.setParameter(8,contact.getId());
            query.execute();
        }
    }
}
