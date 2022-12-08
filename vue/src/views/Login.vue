<template>
  <div id="login" class="text-center">
    <form class="form-signin" @submit.prevent="login">
      <h1 class="h3 mb-3 font-weight-normal">Please Sign In</h1>
      <div
        class="alert alert-danger"
        role="alert"
        v-if="invalidCredentials"
      >Invalid username and password!</div>
      <div
        class="alert alert-success"
        role="alert"
        v-if="this.$route.query.registration"
      >Thank you for registering, please sign in.</div>
      <label for="username" class="sr-only">Username</label>
      <input
        type="text"
        id="username"
        class="form-control"
        placeholder="Username"
        v-model="user.username"
        required
        autofocus
      />
      <label for="password" class="sr-only">Password</label>
      <input
        type="password"
        id="password"
        class="form-control"
        placeholder="Password"
        v-model="user.password"
        required
      />
      <router-link :to="{ name: 'register' }" id= "router-link">Need an account?</router-link>
      <button type="submit">Sign in</button>
    </form>
  </div>
</template>

<script>
import authService from "../services/AuthService";

export default {
  name: "login",
  components: {},
  data() {
    return {
      user: {
        username: "",
        password: ""
      },
      invalidCredentials: false
    };
  },
  methods: {
    login() {
      authService
        .login(this.user)
        .then(response => {
          if (response.status == 200) {
            this.$store.commit("SET_AUTH_TOKEN", response.data.token);
            this.$store.commit("SET_USER", response.data.user);
            this.$router.push("/");
          }
        })
        .catch(error => {
          const response = error.response;

          if (response.status === 401) {
            this.invalidCredentials = true;
          }
        });
    }
  }
};
</script>
<style scoped>

form.form-signin{
  width: 500px;
  padding: 64px 15px 24px;
  margin: 0 auto;
  height: 700px;
}

#login{
    background-color: #212121;
    color: #fff;
    font-family: monospace, serif;
    letter-spacing: 0.05em;
    margin-top: 1em;
}



h1{
    font-size: 35px;
}

#username{
      margin: 0 0 24px;
      width: 100%;
      padding: 14px 16px;
      border: 1px solid #fff;
      background: transparent;
      color: #fff;
      font-family: monospace, serif;
      letter-spacing: 0.05em;
      font-size: 16px;
}

#password{
   margin: 0 0 24px;
      width: 100%;
      padding: 14px 16px;
      border: 1px solid #fff;
      background: transparent;
      color: #fff;
      font-family: monospace, serif;
      letter-spacing: 0.05em;
      font-size: 16px;
}
#router-link{
   margin: 0 0 24px;
         width: 100%;
      padding: 14px 16px;
      border: 0;
      background: transparent;
      color: #fff;
      font-family: monospace, serif;
      letter-spacing: 0.05em;
      font-size: 16px;
     
}



</style>

