package com.study.jsp.controller.vo;



public class ActorVO { // public 이라  set필요 없음
	public String name;
	public int age;
	
	public String getName() { // public이라 jsp에서 바로 못 가져가고 get으로 가져오는것임
		return name;
	}
	
	public int getAge() {
		return age;
	}
	

}
