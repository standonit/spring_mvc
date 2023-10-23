package spring_mvc;

import java.util.Arrays;

import org.springframework.stereotype.Component;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import spring_mvc.validation.CheckEmail;

@Component
public class Employee {

	@Size(min = 2, message = "name must be minimum 2 simbols")
	private String name;
	
	//@NotEmpty(message = "surname is required field")
	@NotBlank(message = "surname is required field")
	private String surname;
	
	@Min(value = 500, message = "must be greater than 499")
	@Max(value = 1000, message = "must be less than 1001")
	private int salary;
	
	private String department;
	private String carBrand;
	private String[] languages;
	
	@Pattern(regexp = "\\d{3}-\\d{2}-\\d{2}", message = "please use pattern XXX-XX-XX")
	private String phoneNumber;
	
	@CheckEmail(value = "abc.com", message = "email must ends with abc.com")
	private String email;

	public Employee() {
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getCarBrand() {
		return carBrand;
	}

	public void setCarBrand(String carBrand) {
		this.carBrand = carBrand;
	}

	public String[] getLanguages() {
		return languages;
	}

	public void setLanguages(String[] languages) {
		this.languages = languages;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Employee [name=" + name + ", surname=" + surname + ", salary=" + salary + ", department=" + department
				+ ", carBrand=" + carBrand + ", languages=" + Arrays.toString(languages) + ", phoneNumber="
				+ phoneNumber + ", email=" + email + "]";
	}

	
	


}