package io.aboutme.projects;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(origins = "http://localhost:4173")
public class ProjectController {
	
	@Autowired
	private ProjectService projectService;
	
	@GetMapping("/projects")
	public List<Project> getProjects(){
		return projectService.getAllProjects();
	}
	
	@GetMapping("/projects/{id}")
	public Project getProject(@PathVariable long id) {
		return projectService.getProject(id);
	}
	
	@PostMapping("/projects")
	public void addProject(@RequestBody Project project) {
		projectService.addProject(project);
	}
	
	@PutMapping("/projects/{id}")
	public void updateProject(@RequestBody Project project, @PathVariable long id) {
		projectService.updateProject(id, project);
	}
	
	@DeleteMapping("/projects/{id}")
	public void deleteProject(@PathVariable long id) {
		projectService.deleteProject(id);
	}
	
}
