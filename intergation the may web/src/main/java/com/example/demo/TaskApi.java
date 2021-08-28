package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController("/tasks")
public class TaskApi {
    @Autowired
    TaskRepo taskRepo;

    @GetMapping("/get-list")
    List<taskDTO> getList(){
        return taskRepo.getList();
    }
}
