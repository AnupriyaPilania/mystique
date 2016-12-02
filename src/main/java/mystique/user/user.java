package mystique.user;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.validation.constraints.Size;


import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class user implements Serializable

{

	private static final long serialVersionUID = 1L ;
	
	
	@Id @GeneratedValue(strategy=GenerationType.SEQUENCE)
	private Long Id;
	
	private String Email;
	
	private String Username;
	
	private String Password;

	@Transient
	private String CPassword;
	
	private String Address;
	
	private String Phone;
	
	private int Role = 1;
	private boolean Active = true;
	
	
	public int getRole() {
		return Role;
	}
	public void setRole(int role) {
		Role = role;
	}
	public boolean isActive(){
		return Active;
	}
	public void setActive(boolean active) {
		Active = active;
	}
	
	
    public user(){
		
	}
	
	
	public Long getId() {
		return Id;
	}
	public void setId(Long id) {
		Id = id;
	}
	@NotEmpty(message="Email field is mandatory.")
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	@NotEmpty(message="username is mandatory.")
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
	   Username = username;
	}
	
	@NotEmpty(message="password field is mandatory.")
	@Size(min = 6, max = 15, message ="ur pass must be bet 6 n 15 characters")
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getCPassword() {
		return CPassword;
	}
	public void setCPassword(String cpassword) {
		CPassword = cpassword;
	}
	
	@NotEmpty(message="phone field is mandatory.")
	@Length(max = 10, min = 10, message="phone number is not valid,should be of length 10.")
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
	  Phone = phone;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	
}
