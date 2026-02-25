<script setup>
import { useScrollAnimation } from '@/composables/useScrollAnimation'

const imgB0Dde15551D8F92Bd1D363Bd27Cec1062 =
  'https://www.figma.com/api/mcp/asset/ebb73fcf-9782-4eee-b7d6-d4d0b61b3f79'
const imgVector87 = 'https://www.figma.com/api/mcp/asset/765114a6-70b5-4ef6-b77e-710e7eea6364'
const imgVector88 = 'https://www.figma.com/api/mcp/asset/a95252a3-0129-47b0-ad16-762013cc24ef'

const featureBarItems = [
  'Pregnancy',
  'Fetal Doppler',
  'AI chat - bot',
  'Vacancies',
  'Appointments',
  "Baby's real size",
  'User-friendly',
  'Yoga',
  'All-in-one Multifunc',
]

useScrollAnimation('.why-need-title', 'animate__fadeInDown')
useScrollAnimation('.why-need-stat', 'animate__fadeInUp')
</script>

<template>
  <section id="why" class="relative bg-[#8B0000] overflow-hidden">
    <!-- Main heading -->
    <div class="max-w-[1280px] mx-auto px-4 sm:px-8 lg:px-16 py-16 sm:py-20 lg:py-24">
      <h2
        class="why-need-title font-['Quicksand',sans-serif] font-medium text-2xl sm:text-3xl lg:text-[36px] leading-normal text-white text-center"
      >
        Why do pregnant women need it?
      </h2>
    </div>

    <!-- 30% stat card - properly aligned, NO shadow -->
    <div class="max-w-[1280px] mx-auto px-4 sm:px-8 lg:px-16 pb-8 sm:pb-12">
      <div class="why-need-stat relative w-full max-w-4xl mx-auto h-64 sm:h-80 lg:h-[320px] overflow-hidden rounded-2xl border border-white/10">
        <img
          alt="Woman experiencing pregnancy anxiety"
          class="absolute inset-0 w-full h-full object-cover object-center"
          :src="imgB0Dde15551D8F92Bd1D363Bd27Cec1062"
        />
        <div class="absolute inset-0 bg-gradient-to-r from-black/50 via-transparent to-transparent" />

        <!-- 30% stat overlay - properly positioned -->
        <div class="absolute left-4 sm:left-8 bottom-4 sm:bottom-8 right-4 sm:right-8 max-w-xl">
          <p class="font-['Quicksand',sans-serif] font-bold text-6xl sm:text-7xl lg:text-8xl leading-none text-white">
            30%
          </p>
          <p class="font-['Quicksand',sans-serif] font-medium text-sm sm:text-base lg:text-lg text-white mt-2 leading-relaxed">
            of women experience pregnancy-specific anxiety (concerns about fetal health, labor pain,
            and maternal competence).
          </p>
        </div>

        <!-- Carousel nav - NO shadow -->
        <div class="absolute right-4 top-1/2 -translate-y-1/2 flex gap-2">
          <button
            class="size-12 sm:size-14 rounded-full flex items-center justify-center bg-white/90 border border-white/20 hover:bg-white transition-colors"
            aria-label="Previous"
          >
            <img alt="" class="w-5 h-6 object-contain rotate-180 scale-y-[-1]" :src="imgVector87" />
          </button>
          <button
            class="size-12 sm:size-14 rounded-full flex items-center justify-center bg-white/90 border border-white/20 hover:bg-white transition-colors"
            aria-label="Next"
          >
            <img alt="" class="w-5 h-6 object-contain" :src="imgVector88" />
          </button>
        </div>
      </div>
    </div>

    <!-- Feature bar -->
    <div class="w-full bg-[#6B0000] py-4">
      <div class="max-w-[1280px] mx-auto px-4 sm:px-8 flex flex-wrap justify-center gap-4 sm:gap-6">
        <span
          v-for="item in featureBarItems"
          :key="item"
          class="font-['Quicksand',sans-serif] font-medium text-white text-sm sm:text-base whitespace-nowrap"
        >
          {{ item }}
        </span>
      </div>
    </div>

    <!-- Sabie application -->
    <div class="max-w-[1280px] mx-auto px-4 py-12 sm:px-8 sm:py-16 lg:px-16 lg:py-20 text-center">
      <h3 class="font-['Quicksand',sans-serif] font-medium text-4xl sm:text-5xl lg:text-[64px] text-white mb-4">
        Sabie application
      </h3>
      <p class="font-['Quicksand',sans-serif] font-normal text-xl sm:text-2xl lg:text-[32px] text-white/95 max-w-2xl mx-auto">
        All the support you need during pregnancy in one place.
      </p>
    </div>
  </section>
</template>
