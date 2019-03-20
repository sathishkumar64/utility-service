package com.utilityservice.api.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.utilityservice.api.model.CountryInfo;
import com.utilityservice.api.service.CountryService;

@RestController
public class UtilityController {

	Logger logger = LoggerFactory.getLogger(this.getClass());	
	
	@Autowired
	private CountryService countryService;
	
	
	@GetMapping(path="/deployedCountryInfo")
    public @ResponseBody  List<CountryInfo> retriveCountryInfo() {
		logger.info("Retrieving all Country Info {} with headers.....");	
        List<CountryInfo> countryInfoList = countryService.getCountryInfo();
        return countryInfoList;
    }
}
