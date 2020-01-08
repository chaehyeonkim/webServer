package kr.or.hanium.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
@Entity
@Table(name="User")
public class User {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="uid")
	private int uid;
	
	@NotEmpty(message="The username must not be empty")
	private String uname;
	
	@NotEmpty(message="The email must not be empty")
	private String uemail;
	
	@NotEmpty(message="The password must not be empty")
	private String upasswd;
	private String ubirth;
	private String uaddress;
	private String utel;
	private String interest_duty;
	private int hope_salary;
	private String authority;

}
