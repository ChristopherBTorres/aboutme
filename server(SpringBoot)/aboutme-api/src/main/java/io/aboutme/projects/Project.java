package io.aboutme.projects;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Project {
	@Id
	private long id;
	@Column
	private String name;
	@Column
	private String type;
	@Column
	private String role;
	@Column(length = 1024)
	private String description;
	
	public Project() {
		
	}
	
	public Project(long id, String name, String type, String role, String description){
		super();
		this.id = id;
		this.name = name;
		this.type = type;
		this.role = role;
		this.description = description;
	}

	/**
	 * @return the id
	 */
	public long getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(long id) {
		this.id = id;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the type
	 */
	public String getType() {
		return type;
	}

	/**
	 * @param type the type to set
	 */
	public void setType(String type) {
		this.type = type;
	}

	/**
	 * @return the role
	 */
	public String getRole() {
		return role;
	}

	/**
	 * @param role the role to set
	 */
	public void setRole(String role) {
		this.role = role;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}
}
