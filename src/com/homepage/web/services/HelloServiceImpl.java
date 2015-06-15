package com.homepage.web.services;

public class HelloServiceImpl implements HelloService {

	@Override
	public String hi() {
		String name ="안녕";
		return name;
	}

}
