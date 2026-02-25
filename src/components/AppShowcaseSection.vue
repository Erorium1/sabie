<script setup>
import { useScrollAnimation } from '@/composables/useScrollAnimation'

const imgD49Fb77Fa99274Ab38558749Bf740C4A1 =
  'https://www.figma.com/api/mcp/asset/4d0fb6db-826f-48f8-a2a5-05c04a07526f'
const img884C73C2Bd4E45D2Aafa0256Ab0178Be2 =
  'https://www.figma.com/api/mcp/asset/7103f8b3-bbe5-4ce3-bf8b-5dc4de7e9785'
const imgVector92 = 'https://www.figma.com/api/mcp/asset/cf7ec7d9-8634-4099-a3b0-e3e941828249'

useScrollAnimation('.app-showcase-card', 'animate__fadeInUp')
</script>

<template>
  <section class="relative bg-[#FFF5F5] overflow-hidden">
    <div class="max-w-[1280px] mx-auto px-4 sm:px-8 lg:px-16 py-16 sm:py-20 lg:py-24">
      <!-- Top: White card with Doppler - NO shadow -->
      <div class="app-showcase-card bg-white rounded-2xl overflow-hidden flex flex-col lg:flex-row border border-gray-200/80 mb-8">
        <div class="w-full lg:w-[280px] h-56 lg:h-80 flex-shrink-0 overflow-hidden">
          <img
            alt="Fetal Doppler"
            class="w-full h-full object-cover object-left"
            :src="imgD49Fb77Fa99274Ab38558749Bf740C4A1"
          />
        </div>
        <div class="flex-1 p-6 lg:p-8">
          <p class="font-['Quicksand',sans-serif] font-medium text-base lg:text-lg text-[#1a1a1a] leading-relaxed">
            The Sabie Fetal Doppler lets expecting mothers safely monitor their baby's heartbeat at
            home. Connected to the Sabie app, it records and analyzes heart rate data, providing
            AI-based personalized pregnancy insights.
          </p>
        </div>
      </div>

      <!-- Curved arrow - keep as requested -->
      <div class="hidden lg:block max-w-md mx-auto mb-8">
        <img alt="" class="w-full h-auto object-contain" :src="imgVector92" />
      </div>

      <!-- 01, 02, 03 + Phone + Doppler - responsive grid -->
      <div class="grid grid-cols-1 lg:grid-cols-12 gap-6 lg:gap-8">
        <!-- Feature 01 -->
        <div class="lg:col-span-4">
          <p class="font-['Quicksand',sans-serif] font-bold text-4xl sm:text-5xl lg:text-[64px] text-[#8B0000] mb-2">
            01
          </p>
          <p class="font-['Quicksand',sans-serif] font-medium text-sm sm:text-base lg:text-lg text-[#1a1a1a] leading-relaxed">
            The Sabie Fetal Doppler uses low-power 3 MHz ultrasound, which is non-ionizing and meets
            medical safety standards, making it safe for regular home use during pregnancy.
          </p>
        </div>

        <!-- Phone mockup - NO shadow -->
        <div class="lg:col-span-4 flex justify-center order-first lg:order-none">
          <div class="w-[240px] sm:w-[280px] lg:w-[320px] rounded-2xl overflow-hidden border border-gray-200/80">
            <img
              alt="Sabie app"
              class="w-full h-auto object-cover"
              :src="img884C73C2Bd4E45D2Aafa0256Ab0178Be2"
            />
            <p class="text-center py-2 font-['Quicksand',sans-serif] font-semibold text-sm text-[#1a1a1a]">
              Sabie
            </p>
          </div>
        </div>

        <!-- Feature 02 -->
        <div class="lg:col-span-4">
          <p class="font-['Quicksand',sans-serif] font-bold text-4xl sm:text-5xl lg:text-[64px] text-[#8B0000] mb-2">
            02
          </p>
          <p class="font-['Quicksand',sans-serif] font-medium text-sm sm:text-base lg:text-lg text-[#1a1a1a] leading-relaxed">
            Connects directly to the app, so every heartbeat measurement is automatically recorded,
            stored, and analyzed, giving mothers an easy way to monitor and review their baby's heart
            activity anytime.
          </p>
        </div>

        <!-- Feature 03 - full width on mobile -->
        <div class="lg:col-span-12">
          <p class="font-['Quicksand',sans-serif] font-bold text-4xl sm:text-5xl lg:text-[64px] text-[#8B0000] mb-2">
            03
          </p>
          <p class="font-['Quicksand',sans-serif] font-medium text-sm sm:text-base lg:text-lg text-[#1a1a1a] leading-relaxed max-w-2xl">
            The Doppler and app help mothers feel closer to their baby by letting them hear the
            heartbeat, track progress, and share these special moments anytime.
          </p>
        </div>
      </div>
    </div>
  </section>
</template>
