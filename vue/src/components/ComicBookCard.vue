<template>
  <div>
      <span id="comic-book-container">
        <span>{{comic.comicName}}</span>
        <span>{{comic.author}}</span>
        <span>{{comic.releaseDate}}</span>
      </span>
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
#comic-book-container {
    border: 3px solid black;
    height: 150px;
    width: 100px;
    margin: 10px 10px 10px 10px;
    padding: 10px 10px 10px 10px;
    display:flex;
    flex-direction: column;
    text-align: center;
    justify-content: space-between;
    color: #fff;
}

</style>