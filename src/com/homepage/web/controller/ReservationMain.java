package com.homepage.web.controller;

import com.homepage.web.services.ReservationService;
import com.homepage.web.services.ReservationServiceImpl;

public class ReservationMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ReservationService service = new ReservationServiceImpl();
		service.process();
	}

}
