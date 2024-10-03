class ProjectService{
    getProjects(){
        return fetch(import.meta.env.VITE_SB_DB_GET_PROJECTS_URL).then((res) => res.json());
    }
}

export default new ProjectService();