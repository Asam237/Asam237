<template>
  <header class="site__header sticky top-0 z-50">
    <nav class="bg-white shadow-lg">
      <div class="max-w-6xl mx-auto px-4">
        <div class="flex justify-between">
          <div class="flex md:w-full md:justify-between">
            <div>
              <a
                style="font-family: 'Inter', sans-serif"
                href="#"
                class="flex items-center py-4"
              >
                <img
                  :src="profilPicture"
                  alt="Logo"
                  class="h-8 w-8 mr-2 rounded-full"
                />
                <span class="font-semibold text-gray-500 text-lg">
                  {{ pseudo }}</span
                >
              </a>
            </div>
            <div
              style="font-family: 'Inter', sans-serif"
              class="hidden md:flex items-center space-x-1 uppercase"
            >
              <div
                v-for="(item, index) in headerLinksWeb"
                :key="index"
                @click="setID = item.myLink"
              >
                <a
                  :href="item.myLink"
                  :class="`
                    py-4
                    px-2
                    text-gray-500
                    font-semibold
                    hover:text-green-500
                    transition
                    duration-300
                    ${
                      setID === item.myLink ? 'border-b-4 border-green-500' : ''
                    }
                    `"
                  >{{ item.name }}</a
                >
              </div>
            </div>
          </div>
          <!-- Mobile menu button -->
          <div
            class="md:hidden flex items-center"
            style="font-family: 'Open Sans', sans-serif"
          >
            <button class="outline-none mobile-menu-button">
              <svg
                class="w-6 h-6 text-gray-500 hover:text-green-500"
                x-show="!showMenu"
                fill="none"
                stroke-linecap="round"
                stroke-linejoin="round"
                stroke-width="2"
                viewBox="0 0 24 24"
                stroke="currentColor"
              >
                <path d="M4 6h16M4 12h16M4 18h16"></path>
              </svg>
            </button>
          </div>
        </div>
      </div>
      <!-- mobile menu -->
      <div class="hidden mobile-menu">
        <ul
          v-for="(item, index) in headerLinksWeb"
          :key="index"
          x-show="!showMenu"
          @click="setID = item.myLink"
        >
          <li>
            <a
              :href="item.myLink"
              :class="`
                block
                text-sm
                px-2
                py-4
                hover:bg-green-500
                transition
                duration-300
                ${setID === item.myLink ? 'bg-green-500' : ''}
                `"
              >{{ item.name }}</a
            >
          </li>
        </ul>
      </div>
    </nav>
  </header>
</template>

<script>
export default {
  name: 'HeaderComponent',
  data() {
    return {
      name: 'Abba Sali',
      profilPicture: require('../static/profile.jpg'),

      setID: 'about',
    }
  },
  computed: {
    pseudo() {
      return this.$store.state.infos.pseudo
    },
    headerLinksWeb() {
      return this.$store.state.header.headerlinks
    },
  },
}
</script>
