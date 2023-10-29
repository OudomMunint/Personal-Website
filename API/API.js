const API = {
  // Get all posts
  async getAllProjects() {
    try {
      const response = await fetch("https://jsonplaceholder.typicode.com/posts");
      const data = await response.json();
      return data;
    } catch (error) {
      console.error(error);
    }
  },

  // Get post by ID
  async getProjectById(id) {
    try {
      const response = await fetch(`https://jsonplaceholder.typicode.com/posts/${id}`);
      const data = await response.json();
      return data;
    } catch (error) {
      console.error(error);
    }
  },

  // Add new post
  async addProject(post) {
    try {
      const response = await fetch("https://jsonplaceholder.typicode.com/posts", {
        method: "POST",
        body: JSON.stringify(post),
        headers: {
          "Content-type": "application/json; charset=UTF-8",
        },
      });
      const data = await response.json();
      return data;
    } catch (error) {
      console.error(error);
    }
  },

  // Update post by ID
  async updateProjectById(id, post) {
    try {
      const response = await fetch(`https://jsonplaceholder.typicode.com/posts/${id}`, {
        method: "PUT",
        body: JSON.stringify(post),
        headers: {
          "Content-type": "application/json; charset=UTF-8",
        },
      });
      const data = await response.json();
      return data;
    } catch (error) {
      console.error(error);
    }
  },

  // Delete post by ID
  async deleteProjectById(id) {
    try {
      const response = await fetch(`https://jsonplaceholder.typicode.com/posts/${id}`, {
        method: "DELETE",
      });
      const data = await response.json();
      return data;
    } catch (error) {
      console.error(error);
    }
  },
};

export default API;