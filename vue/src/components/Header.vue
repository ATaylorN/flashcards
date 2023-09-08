<template>
<div class="menu"> 
  <button data-bs-toggle="collapse" data-bs-target="#collapsible" class="menubtn"> Menu</button>
  <div id="collapsible" class="collapse">
    <ul class="nav flex-column">
      <li class="nav-item"><a class="nav-link" href="http://localhost:8080/">Home</a></li>
      <li class="nav-item"><a class="nav-link" href="http://localhost:8080/questions">Random Question</a></li>
      <li class="nav-item"><a class="nav-link" href="http://localhost:8080/studyMode">Study Mode</a></li>
    </ul>
      <ul class="nav-link" id="logout">
        <li> <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link> </li>
      </ul>
  </div>
</div>

</template>

<script>
export default {
  name: "Header"
}

</script>

<style scoped>
.menu{
  font-family: 'Roboto Condensed', sans-serif;
  font-size: 24px;
  width: 100%;
  background-color: #05668D;
}
.menubtn{
  border: none;
  background-color: #05668D;
  color: white;
  padding: 1rem;
  margin-left: 2rem;
}
.nav-link{
  text-align: center;
  background-color: #5acbf771;
  color: white;
  font-size: 20px;
}
.nav-link:hover{
  color: #A5BE00;
}
#logout a{
  color: rgb(255, 255, 255);
  text-decoration: none;
}
#logout li{
  padding-bottom: 1rem;
}
#logout a:hover{
  color: #A5BE00;
}

</style>