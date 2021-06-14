package com.example.demospringboot.controller;

import org.kie.api.runtime.KieContainer;
import org.kie.api.runtime.KieSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.demospringboot.domain.Example;
import com.example.demospringboot.domain.FixedIntrestRate;

@RestController
public class RestControllerEx {
	
	@Autowired KieContainer kieContainer;

	@GetMapping(path = "/hi")
	public Example method() {
		Example e = new Example();
		return e;
	}
	
	@GetMapping(path = "/getFxdIntrestRate")
    public FixedIntrestRate getQuestions(@RequestParam(required = true) String bank, @RequestParam(required = true) Integer durationInYear) {
        KieSession kieSession = kieContainer.newKieSession();
        FixedIntrestRate fdRequest = new FixedIntrestRate(bank,durationInYear);
        kieSession.insert(fdRequest);
        kieSession.fireAllRules();
        kieSession.dispose();
        return fdRequest;
    }
}
