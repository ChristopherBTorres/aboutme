package io.aboutme.projects;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProjectService {
	
	@Autowired
	private ProjectRepository projectRepository;
	
	public List<Project> getAllProjects(){
		List<Project> projects = new ArrayList<>();
		projectRepository.findAll().forEach(projects::add);
		return projects;
	}

	public Project getProject(long id) {
		Project p = projectRepository.findById(id).get();
		return p;
	}
	
	public void addProject(Project project) {
		projectRepository.save(project);
	}
	
	public void updateProject(long id, Project project) {
		projectRepository.save(project);
	}
	
	public void deleteProject(long id) {
		projectRepository.deleteById(id);
	}

}
