<template>
  <div class="comic-book-card">
      <h2 class="comic-book-title">{{comic.title}}</h2>
      <p>picture of comic</p>
      <h3>{{comic.author}}</h3>
  </div>
</template>

<script>
export default {
    name: 'comic-book-card',
    props: {
        comic: Object
    }
    
}
</script>

<style scoped>
div.comic-book-card {
    border: 5px solid blue;
}

</style>