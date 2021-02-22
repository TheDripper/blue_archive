<template>
  <div id="root" class="flex items-center justify-center">
    <div id="tiles">
      <div
        :id="post.title.rendered"
        v-for="post in posts"
        :key="post.id"
        class="post"
        v-html="post.content.rendered"
      />
    </div>
  </div>
</template>

<script>
import { mapActions } from "vuex";

export default {
  computed: {
    posts() {
      return this.$store.state.posts;
    },
  },
};
</script>

<style lang="scss">
html,
body {
  background: black;
  color: #ff00ff;
}
.post {
  overflow: hidden;
  width: 400px;
  video {
    height: 400px !important;
    max-width: none !important;
  }
}
.done {
  text-decoration: line-through;
}
.zoom {
  animation: 20s linear infinite reverse zoom;
  /* transform-origin: 30% 0; */
}
@keyframes zoom {
  0% {
    transform: scale(7);
    filter: blur(0);
  }
  100% {
    transform: scale(3);
  }
}

#root {
  width: 100vw;
  height: 100vh;
}
#tiles {
  width: 1200px;
  height: 1200px;
  @apply flex flex-wrap;
}
</style>