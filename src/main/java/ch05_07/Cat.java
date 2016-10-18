package ch05_07;

public class Cat {
	private int weight;
	private String name;

	public Cat(int weight, String name) {
		super();
		this.weight = weight;
		this.name = name;
	}

	public int getWeight() {   // weight
		return weight;
	}

	public void setWeight(int weight) {  // weight
		this.weight = weight;
	}

	public String getCatName() {   // catName
		return name;
	}

	public void setCatName(String name) {  // catName
		this.name = name;
	}
}
