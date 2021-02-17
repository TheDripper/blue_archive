export const state = () => ({
  posts: []
});

export const mutations = {
  posts(state, posts) {
    state.posts = posts;
  }
};
export const actions = {
  posts(context,posts) {
    context.commit("posts", posts);
  },
  async nuxtServerInit({commit}) {
    const posts = await this.$axios.$get('/wp-json/wp/v2/posts');
    commit('posts',posts);
  }
};
