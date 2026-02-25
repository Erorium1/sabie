<script setup>
import { useScrollAnimation } from '@/composables/useScrollAnimation'

const img5D5F9C1E948F9F9B859A4F932Bed696F1 =
  'https://www.figma.com/api/mcp/asset/77400678-b5ca-4494-9604-2baa34536fdc'

const features = [
  {
    title: 'Smart Doppler Monitoring',
    description:
      "Track your baby's heart rate safely with Doppler technology. Get instant analysis, trends, and clear health insights in one place.",
  },
  {
    title: 'AI Pregnancy Chatbot',
    description:
      'Ask questions anytime. Choose suggested questions or ask your own. Receive week-based guidance, symptom explanations, and calming support throughout your pregnancy.',
  },
  {
    title: 'Check-Ups & Medical Booking',
    description:
      'Search for trusted doctors and hospitals in your area, check schedules, and book appointments directly through the app. Keep all your upcoming visits organized in one place.',
  },
  {
    title: "Mother's Store & Online Jobs",
    description:
      'Access essential pregnancy products with guided assistance and explore flexible online job opportunities designed specifically for mothers, all within one supportive platform.',
  },
]

useScrollAnimation('.section-title', 'animate__fadeInDown')
useScrollAnimation('.feature-card', 'animate__fadeInUp')
</script>

<template>
  <section id="features" class="relative bg-[#8B0000] overflow-hidden">
    <!-- Top banner: photo with gradient overlay - NO shadow -->
    <div class="relative h-48 sm:h-64 md:h-80 lg:h-[400px] w-full overflow-hidden">
      <div class="absolute left-1/2 top-1/2 h-[140vw] w-[40vw] -translate-x-1/2 -translate-y-1/2 -rotate-90 min-h-[400px] min-w-[300px]">
        <img
          alt=""
          class="absolute inset-0 h-full w-[165%] max-w-none object-cover -translate-x-[38%]"
          :src="img5D5F9C1E948F9F9B859A4F932Bed696F1"
        />
      </div>
      <div
        class="absolute inset-0 bg-gradient-to-b from-[#8B0000] from-[1%] via-[rgba(139,0,0,0.3)] via-[38%] to-transparent"
      />
    </div>

    <!-- Features content - clean grid: left = list, right = descriptions -->
    <div class="max-w-[1280px] mx-auto px-4 sm:px-8 lg:px-16 py-16 sm:py-20 lg:py-24">
      <h2 class="section-title font-['Quicksand',sans-serif] font-bold text-2xl sm:text-3xl lg:text-[36px] text-white mb-8 lg:mb-12">
        Main Features
      </h2>

      <div class="grid grid-cols-1 lg:grid-cols-2 gap-8 lg:gap-16">
        <!-- Left: Feature list with dots -->
        <div class="flex flex-col gap-6">
          <div
            v-for="(feature, index) in features"
            :key="index"
            class="feature-card flex gap-4 items-center"
          >
            <div class="w-3 h-3 rounded-full bg-white shrink-0" />
            <h3 class="font-['Quicksand',sans-serif] font-semibold text-base sm:text-lg text-white">
              {{ feature.title }}
            </h3>
          </div>
        </div>

        <!-- Right: Feature descriptions -->
        <div class="flex flex-col gap-6">
          <div
            v-for="(feature, index) in features"
            :key="'desc-' + index"
            class="feature-card border border-white/10 rounded-xl p-4 sm:p-6"
          >
            <p class="font-['Quicksand',sans-serif] font-medium text-sm sm:text-base lg:text-lg text-white/95 leading-relaxed">
              {{ feature.description }}
            </p>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
