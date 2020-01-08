package kr.or.hanium.model;

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
@Table(name="recruitment")
public class Recruitment {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="recruit_id")
	private int recruit_id;
	private String recruit_name;
	
	@ManyToOne(cascade=CascadeType.DETACH)
	@JoinColumn(name="company_id")
	private Company company;
	private String recruitment_form;
	private String recruit_category;
	private String recruitment_school;
	private String work_location;
	private String pay;
	private String position;
	private String start_day;
	private String finish_day;
	private String require_documents;
	private int status;
	private String require_how_many;

}
