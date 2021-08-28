package com.example.demo;

import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.StoredProcedureQuery;
import java.util.List;

@Repository
public class TaskRepo {
    @PersistenceContext
    EntityManager em;

    public List<taskDTO> getList(){
        StoredProcedureQuery query=em.createStoredProcedureQuery("sp_select_tasks",taskDTO.class);
        return query.getResultList();
    }
}
