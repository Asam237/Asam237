<template>
  <div id="about" class="site__about">
    <div class="max-w-6xl mx-auto px-4 py-10 md:py-32">
      <h1
        class="
          site__about__name
          text-gray-800
          uppercase
          text-3xl
          font-extrabold
          md:text-5xl
        "
        style="font-family: 'Inter', sans-serif"
      >
        <span class="text-gray-500">ABBA SALI </span>ABOUBAKAR MAMATE
      </h1>
      <h4
        class="
          py-2
          site__about__subnanme
          text-gray-800
          uppercase
          text-xl
          font-bold
          md:text-2xl
        "
        style="font-family: 'Inter', sans-serif"
      >
        <span class="text-gray-500">CAMEROON </span>ABBASALIMOKOLO@GMAIL.COM
      </h4>
      <p
        class="
          mt-4
          md:mt-8
          site__about__content
          leading-7
          text-xs
          md:text-lg
          font-medium
          text-gray-500
        "
      >
        I am a software developer experienced in Javascript, Java, Kotlin,
        NodeJs, SQL and NoSQL databases, HTML(<span class="text-red-500">5</span
        >), CSS(3), Tailwind-css, agile SCRUM development methodologies.
      </p>
      <div class="flex pt-5 md:pt-10">
        <div
          v-for="(item, myIndex) in socials"
          :key="myIndex"
          class="site__about__socials"
        >
          <ul>
            <li>
              <a :href="item.link"
                ><img :src="item.picture" class="w-10 h-10 mr-3 sm:mr-6" alt=""
              /></a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'AboutComponent',
  computed: {
    socials() {
      return this.$store.state.socials.socials
    },
  },
}
</script>
