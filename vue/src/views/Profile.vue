<template>
  <div id="profile">
    <h1>Welcome, {{user.username}}!</h1>
  </div>
</template>

<script>
export default {
    name: 'profile',
    data() {
        return {
            user: this.$store.state.user
        }
    } 
}
</script>

<style>
#profile {
  display:flex;
  
}
</style>