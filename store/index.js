export const state = () => ({
  posts: []
});

export const mutations = {
  posts(state, posts) {
    state.posts = posts;
  }
};
export const actions = {
  async getPage(context, id) {
    const page = await this.$axios.$get('/wp-json/wp/v2/posts/'+id);
  },
  async nuxtServerInit({commit}) {
    const posts = await this.$axios.$get('/wp-json/wp/v2/pages?orderby=menu_order&order=asc');
    console.log(posts);
    commit('posts',posts);
  }
};
