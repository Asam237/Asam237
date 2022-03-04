<template>
  <div class="site">
    <Header />
    <main class="site__main">
      <About />
      <Experience />
      <Education />
      <Skills />
      <Footer />
    </main>
    <!-- <nuxt-link to="/about"> about here </nuxt-link> -->
    <!-- <script>
const btn = document.querySelector('button.mobile-menu-button')
const menu = document.querySelector('.mobile-menu')

btn.addEventListener('click', () => {
  menu.classList.toggle('hidden')
})
</script> -->
  </div>
</template>


<script>
export default {
  name: 'IndexPage',
}
</script>

 <style>
@import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500;700&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Saira+Extra+Condensed:wght@300;500;900&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@500;700&display=swap');
</style>


