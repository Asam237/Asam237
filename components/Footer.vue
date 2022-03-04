<template>
  <footer class="site__footer" style="font-family: 'Open Sans', sans-serif">
    <div style="height: 1px" class="line w-full bg-gray-300" />
    <div
      class="
        max-w-6xl
        mx-auto
        px-4
        py-4
        flex flex-col
        md:flex-row md:justify-between
      "
    >
      <div class="site__footer-copy">
        <p
          class="
            site__about__content
            leading-7
            text-xs
            md:text-lg
            font-medium
            text-gray-500
          "
          style="font-family: 'Inter', sans-serif"
        >
          Copyright © 2022 Abba Sali - All rights reserved
        </p>
      </div>
      <div class="site__footer-links flex flex-col md:flex-row">
        <div class="items" v-for="(item, index) in links" :key="index">
          <a
            class="
              mr-0
              md:mr-4 md:text-lg
              font-medium
              text-xs
              md:text-lg
              text-gray-500
              hover:underline
            "
            :href="item.link"
            style="font-family: 'Inter', sans-serif"
            >{{ item.name }}</a
          >
        </div>
      </div>
    </div>
  </footer>
</template>

<script>
export default {
  name: 'FooterComponent',
  computed: {
    links() {
      return this.$store.state.footer.links
    },
  },
}
</script>
