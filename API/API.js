const API = {
    // Get all proj
    async getAllPosts() {
      const response = await fetch(
        ""
      );
      const data = await response.json();
      return data;
    },
    // Get proj via id
    async getPostById(id) {
      const response = await fetch(
        ``
      );
      const data = await response.json();
      return data;
    },
  };
