<template>
  <div id="skills" class="site__skills md:h-screen">
    <div style="height: 1px" class="line w-full bg-gray-300" />
    <div class="max-w-6xl mx-auto px-4 py-5 md:py-10">
      <h1
        class="
          site__skills__name
          text-gray-900
          uppercase
          text-3xl
          font-extrabold
          md:text-5xl
        "
      >
        SKILLS
      </h1>
      <p
        class="
          site__skills__content
          leading-7
          text-xs
          md:text-lg
          font-medium
          text-gray-500
          uppercase
          py-6
          md:py-12
        "
        style="font-family: 'Inter', sans-serif"
      >
        Programming Languages & Tools
      </p>
      <div class="flex">
        <div
          class="site__skills__items"
          v-for="(item, index) in skills"
          :key="index"
        >
          <img
            class="
              w-10
              h-10
              mr-3
              sm:mr-6
              transform
              transition
              duration-500
              hover:scale-125
            "
            :src="item"
            alt=""
          />
        </div>
      </div>
      <p
        class="
          site__skills__content
          leading-7
          text-xs
          md:text-lg
          font-medium
          text-gray-500
          uppercase
          pt-6
          md:pt-12
        "
        style="font-family: 'Inter', sans-serif"
      >
        Workflow
      </p>
      <div class="site__skills__workflow flex flex-col pt-2 leading-8">
        <div v-for="(item, index) in workflows" :key="index">
          <p
            class="text-gray-500 text-xs md:text-lg leading-7"
            style="font-family: 'Inter', sans-serif"
          >
            <span>&#10168;</span> {{ item }}
          </p>
        </div>
      </div>
      <a
        style="font-family: 'Inter', sans-serif"
        href="/CV_ABBA_SALI.pdf"
        target="_blank"
        class="
          site__download-cv
          underline
          text-red-500
          font-medium
          flex
          justify-start
          md:justify-end
          text-xs
          md:text-lg
          pt-4
          md:pt-0
        "
      >
        <span class="transform transition duration-500 hover:scale-125">
          Download CV
        </span>
      </a>
    </div>
  </div>
</template>

<script>
export default {
  name: 'SkillComponent',
  data() {
    return {
      skills: [
        require('../static/nodejs.png'),
        require('../static/script-java.png'),
        require('../static/coding.png'),
        require('../static/api.png'),
        require('../static/github.png'),
        require('../static/mobile-app.png'),
      ],
      workflows: [
        'Mobile-First, Responsive Design',
        'Agile Development & Scrum',
        'Cross Browser Testing & Debugging',
        ' Cross Functional Teams',
      ],
    }
  },
}
</script>
