import React from "react";
import ProjectService from "../services/ProjectService";

class ProjectComponent extends React.Component {
    constructor(props){
        super(props)
        this.state = {
            projects:[]
        }
    }

    componentDidMount(){
        ProjectService.getProjects().then((res) => {
            this.setState({projects: res});
        });
    }

    render(){
        return(
            <div>
                {
                    this.state.projects.map(
                        project =>
                        <div key={project.id} id="container">
                            <div id="left">
                                <strong>{project.name}</strong> - <i>{project.type}</i>, <strong>Roles:</strong> <em>{project.role}</em>
                            </div>
                            <ul className="bulletItem">
                                {project.description.split('|').map((descItem, index) => (
                                    <li key={index}>{descItem}</li>
                                ))}
                            </ul>
                        </div>
                    )
                }
            </div>
        )
    }
}

export default ProjectComponent;