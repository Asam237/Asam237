<template>
  <div class="site__item pt-6 md:pt-10">
    <header
      class="
        site__item-header
        flex flex-col
        md:flex-row md:justify-between md:items-center
      "
      style="font-family: 'Saira Extra Condensed', sans-serif"
    >
      <div class="site__item-text">
        <h4
          class="
            site__about__name
            text-gray-900
            uppercase
            text-xl
            font-medium
            md:text-3xl
          "
        >
          {{ title }}
        </h4>
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
          {{ subTitle }}
        </p>
      </div>
      <div class="site__item-year">
        <p
          class="
            site__about__content
            md:leading-7
            text-xs
            font-medium
            md:text-base
            text-red-600
          "
          style="font-family: 'Inter', sans-serif"
        >
          {{ year }}
        </p>
      </div>
    </header>

    <div class="site__item-content">
      <p
        class="
          site__about__content
          py-0
          md:py-4
          leading-7
          text-xs
          md:text-base
          text-gray-500
        "
        style="font-family: 'Inter', sans-serif"
      >
        {{ content }}
      </p>
    </div>
  </div>
</template>

<script>
export default {
  name: 'ItemComponent',
  props: ['title', 'subTitle', 'content', 'year'],
}
</script>
