package com.qsp.DTO;

public  class Student_DTO {
      
	private int Id;
	private String Name;
	private Double Physics;
	private Double Chemistry;
	private Double Maths;
	
	public Student_DTO(int id, String name, Double physics, Double chemistry, Double maths) {
		super();
		Id = id;
		Name = name;
		Physics = physics;
		Chemistry = chemistry;
		Maths = maths;
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public Double getPhysics() {
		return Physics;
	}
	public void setPhysics(Double physics) {
		Physics = physics;
	}
	public Double getChemistry() {
		return Chemistry;
	}
	public void setChemistry(Double chemistry) {
		Chemistry = chemistry;
	}
	public Double getMaths() {
		return Maths;
	}
	public void setMaths(Double maths) {
		Maths = maths;
	}
}

