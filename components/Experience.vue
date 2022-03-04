<template>
  <div id="experience" class="site__experience md:h-screen">
    <div style="height: 1px" class="line w-full bg-gray-300" />
    <div class="max-w-6xl mx-auto px-4 py-5 md:py-10">
      <h1
        class="
          site__experience__name
          text-gray-900
          uppercase
          text-2xl
          font-extrabold
          md:text-4xl
        "
      >
        EXPERIENCE
      </h1>
      <div
        class="site__experience__items"
        v-for="(item, index) in experiences"
        :key="index"
      >
        <Item
          :title="item.title"
          :year="item.year"
          :subTitle="item.subTitle"
          :content="item.content"
        />
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'ExperienceComponent',
  computed: {
    experiences() {
      return this.$store.state.experiences.experiences
    },
  },
}
</script>
