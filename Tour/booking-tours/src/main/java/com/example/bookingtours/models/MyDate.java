package com.example.bookingtours.models;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MyDate {
	private int date;

	public  MyDate(){
	}

	public MyDate(int day, int month, int year) {
		this.date = day | month << 5 | year << 9;
	}

	public int getDay() {
//		C1:
//		return ~(date >> 5 << 5) & date  ;
//		C2:
		return date & ((int)(Math.pow(2, 5) - 1));
	}

	public int getMonth() {
//C1:
//		return (date >> 5) & ~((date >> 5) >> 4 << 4);
//C2:
		return date>>5 & ( (int)((Math.pow(2, 4) - 1)) );
	}

	public int getYear() {
		return date >> 9;
	}

	public void setDay(int day) {
//cách 1:
//		date = day | getMonth() << 5 | getYear() << 9;
//cách 2:
//		date = (date>>5<<5) | day;
//Cách 3:
		date = date & ~((int)(Math.pow(2, 5) - 1)) | day;
	}

	public void setMonth(int month) {
//cách 1:
//		date = getDay() | month << 5 | getYear() << 9;
//Cách 2:

//Cách 3:
		date = (date &  ~((int)(Math.pow(2, 9)) - (int)(Math.pow(2, 5))) ) | month<<5;
	}

	public void setYear(int year) {
//cách 1:
//		date = getDay() | getMonth() << 5 | year << 9;
//cách 2:
		date = (~(date >> 9 << 9) & date) | (year << 9);
//Cách 3:
	}

	public boolean isBefore(MyDate other) {
		return this.date < other.date;
	}

	public boolean isAfter(MyDate other) {
		return this.date > other.date;
	}

	public boolean equals(MyDate other) {
		return this.date == other.date;
	}

	public String toString() {
		return getDay() + "/" + getMonth() + "/" + getYear();
	}

}