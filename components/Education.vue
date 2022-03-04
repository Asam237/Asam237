<template>
  <div id="education" class="site__experience">
    <div style="height: 1px" class="line w-full bg-gray-300" />
    <div class="max-w-6xl mx-auto px-4 py-10 md:py-32">
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
        EDUCATION
      </h1>
      <div
        class="site__eductation__items"
        v-for="(item, index) in educations"
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
  name: 'EducationComponent',
  computed: {
    educations() {
      return this.$store.state.education.educations
    },
  },
}
</script>
