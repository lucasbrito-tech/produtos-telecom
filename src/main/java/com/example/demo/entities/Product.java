package com.example.demo.entities;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "products")
public class Product implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	private Long product_id;
	private String name;
	private Double weight;
	private Double price;
	private Integer quantity;

	
	@ManyToMany(mappedBy = "products")
	private Set<Category> categories = new HashSet<>();

	public Product() {
	}

	public Product(Long product_id, String name, Double weight, Double price, Integer quantity) {
		this.product_id = product_id;
		this.name = name;
		this.weight = weight;
		this.price = price;
		this.quantity = quantity;
	}

	public Long getProduct_id() {
		return product_id;
	}

	public void setProduct_id(Long product_id) {
		this.product_id = product_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Double getWeight() {
		return weight;
	}

	public void setWeight(Double weight) {
		this.weight = weight;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Set<Category> getCategories() {
		return categories;
	}

	public void setCategories(Set<Category> categories) {
		this.categories = categories;
	}

	@Override
	public int hashCode() {
		return Objects.hash(product_id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Product other = (Product) obj;
		return Objects.equals(product_id, other.product_id);
	}

	@Override
	public String toString() {
		return "Products [product_id=" + product_id + ", name=" + name + ", weight=" + weight + ", price=" + price
				+ ", quantity=" + quantity + "]";
	}

}
