package kr.or.hanium.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Entity
@Table(name="Certificate")
public class Certificate implements Serializable{
	
	@Id
	@ManyToOne(cascade=CascadeType.DETACH)
	@JoinColumn(name="uid")
	private User user;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="cid")
	private int cid;
	
	private String cname;
	private String acquisition_date;

}
