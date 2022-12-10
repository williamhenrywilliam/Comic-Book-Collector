<template>
  <section>
    <div class="comic-book-collection">   
        <comic-book-card v-for="comic in $store.state.comics" v-bind:comic="comic" v-bind:key="comic.title"/>
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

<style scoped >
div.comic-book-collection{
    display: flex;
    justify-content: space-evenly;
    border: 5px solid green;
}
</style>