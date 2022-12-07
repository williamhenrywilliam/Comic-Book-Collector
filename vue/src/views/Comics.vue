<template>
  <section>
    <h1>Comics to Explore</h1>
    <div>
        <comic-book-collection />
    </div>
  </section>
</template>

<script>
import ComicBookCollection from '../components/ComicBookCollection.vue'

export default {
    components: {
        ComicBookCollection 
    },
    name: 'comics'
}
</script>

<style>

</style>