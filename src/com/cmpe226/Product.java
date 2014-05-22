package com.cmpe226;

import java.util.ArrayList;

public class Product {
	private ArrayList<String> name;
	private ArrayList<String> type;
	private ArrayList<Integer> size ;
	private ArrayList<Double> price;
	private ArrayList<String> color;
	public ArrayList<String> getName() {
		
		return name;
	}
	public void setBrand(ArrayList<String> n) {
		this.name = n;
	}
	
	
	
	public ArrayList<String> getType() 
	{
		return type;
	}
	public void setType(ArrayList<String> t) {
		this.type = t;
	}
	
	public ArrayList<Integer> getSize() {
		
		return size;
	}
	
	public void setSize(ArrayList<Integer> s) {
		this.size = s;
	}
	
public ArrayList<Double> getPrice() {
		
		return price;
	}
	
	public void setPrice(ArrayList<Double> pr) {
		this.price = pr;
	}
	

	public ArrayList<String> getColor() 
	{
		return color;
	}
	public void setColor(ArrayList<String> c) {
		this.color = c;
}
}
