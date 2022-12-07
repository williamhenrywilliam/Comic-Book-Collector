<template>
  <section>
    <h2>This is a Comic book collection </h2>
    <div class="comic-book-collection">   
        <comic-book-card v-for="comic in $store.state.comics" v-bind:key="comic.title"/>
    </div>
  </section>
</template>

<script>
import ComicBookCard from './ComicBookCard.vue'

export default {
    name: 'comic-book-collection',
    components: { 
        ComicBookCard
    },
}
</script>

<style>
div.comic-book-collection{
    display: flex;
    justify-content: space-evenly;
}
</style>