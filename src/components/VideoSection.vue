<script setup>
import { useScrollAnimation } from '@/composables/useScrollAnimation'

const img884C73C2Bd4E45D2Aafa0256Ab0178Be3 =
  'https://www.figma.com/api/mcp/asset/2d4b2324-5ae5-46cf-89dc-255e76f43c61'

useScrollAnimation('.video-section-title', 'animate__fadeInDown')
</script>

<template>
  <section class="relative bg-[#fff3f3] overflow-hidden">
    <div class="max-w-[1280px] mx-auto px-4 sm:px-8 lg:px-16 py-16 sm:py-20 lg:py-24">
      <!-- Top: Phone mockup + feature 03 text -->
      <div class="flex flex-col lg:flex-row items-start justify-between gap-8 lg:gap-12 mb-12 lg:mb-16">
        <p
          class="font-['Quicksand',sans-serif] font-medium text-lg sm:text-[24px] leading-normal text-black max-w-full lg:max-w-[304px] order-2 lg:order-1"
        >
          The Doppler and app help mothers feel closer to their baby by letting them hear the
          heartbeat, track progress, and share these special moments anytime.
        </p>
        <div class="w-full max-w-[280px] sm:max-w-[384px] aspect-[384/667] mx-auto lg:mx-0 rounded-2xl overflow-hidden shrink-0 order-1 lg:order-2">
          <img
            alt="Sabie app"
            class="w-full h-full object-cover object-top"
            :src="img884C73C2Bd4E45D2Aafa0256Ab0178Be3"
          />
        </div>
      </div>

      <!-- See it in action -->
      <h2
        class="video-section-title font-['Quicksand',sans-serif] font-medium text-3xl sm:text-4xl lg:text-[64px] leading-normal text-black text-center mb-8 sm:mb-12"
      >
        See it in action
      </h2>

      <!-- Video placeholder -->
      <div
        class="bg-[#d9d9d9] h-[600px] rounded-[50px] flex items-center justify-center max-w-[1066px] mx-auto"
      >
        <p class="font-['Quicksand',sans-serif] font-semibold text-[40px] leading-normal text-black">
          Video
        </p>
      </div>
    </div>
  </section>
</template>
