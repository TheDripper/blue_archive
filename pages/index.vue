<template>
  <div id="root">
    <h1>TEST</h1>
  </div>
</template>

<script>
import { mapMutations } from 'vuex'

export default {
  computed: {
    posts () {
      return this.$store.state.posts
    }
  },
  // methods: {
  //   addTodo (e) {
  //     this.$store.commit('todos/add', e.target.value)
  //     e.target.value = ''
  //   },
  //   ...mapMutations({
  //     toggle: 'todos/toggle'
  //   })
  // }
}
</script>

<style>
.done {
  text-decoration: line-through;
}
</style>