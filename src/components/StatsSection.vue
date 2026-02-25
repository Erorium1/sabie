<script setup>
import { useScrollAnimation } from '@/composables/useScrollAnimation'

const img1660A86E676B47Aa0Ca1714F7C4Ed3441 =
  'https://www.figma.com/api/mcp/asset/94a6c592-7d1f-4941-b726-19dbc52f7120'
const imgAd7E60A7D1Cdddc9082274825C9F4B901 =
  'https://www.figma.com/api/mcp/asset/a7ed3678-abb3-4dd4-b62d-b0ae79c0242f'
const imgVector = 'https://www.figma.com/api/mcp/asset/14343ac2-d57a-4ea9-9a3a-3cc5fd571540'
const imgVector1 = 'https://www.figma.com/api/mcp/asset/a724c4bb-d151-4241-bcf3-38e1b55b2639'
const imgGroup = 'https://www.figma.com/api/mcp/asset/88a46b87-c191-4a51-9b6e-baed27ed7f72'

useScrollAnimation('.stat-item', 'animate__zoomIn')
useScrollAnimation('.sdg-section', 'animate__fadeInUp')
</script>

<template>
  <section id="stats" class="relative bg-white overflow-hidden">
    <div class="max-w-[1280px] mx-auto px-4 sm:px-8 lg:px-16 py-16 sm:py-20 lg:py-24">
      <!-- TAM SAM SOM — two columns: circles left, stats right -->
      <div class="stat-item flex flex-col lg:flex-row gap-12 lg:gap-16 items-start lg:items-center mb-16 lg:mb-24">
        <!-- Left: Concentric circles diagram — each label in its OWN ring -->
        <div class="relative w-[280px] h-[280px] sm:w-[340px] sm:h-[340px] lg:w-[400px] lg:h-[400px] mx-auto lg:mx-0 shrink-0">
          <!-- TAM — outer circle, label at top -->
          <div
            class="absolute inset-0 rounded-full border-2 border-[#8B0000] flex items-start justify-center pt-5 sm:pt-6 lg:pt-8"
          >
            <span class="font-['Quicksand',sans-serif] font-bold text-lg sm:text-xl lg:text-2xl text-black">TAM</span>
          </div>

          <!-- SAM — middle circle, label at top of middle ring -->
          <div
            class="absolute inset-[15%] rounded-full border-2 border-[#8B0000] flex items-start justify-center pt-4 sm:pt-5 lg:pt-6"
          >
            <span class="font-['Quicksand',sans-serif] font-bold text-base sm:text-lg lg:text-xl text-black">SAM</span>
          </div>

          <!-- SOM — inner circle, label centered -->
          <div
            class="absolute inset-[32%] rounded-full border-2 border-[#8B0000] flex items-center justify-center"
          >
            <span class="font-['Quicksand',sans-serif] font-bold text-base sm:text-lg lg:text-xl text-black">SOM</span>
          </div>
        </div>

        <!-- Right: Three stat blocks stacked vertically -->
        <div class="flex-1 w-full space-y-8 sm:space-y-10">
          <h2 class="font-['Quicksand',sans-serif] font-medium text-3xl sm:text-4xl lg:text-5xl text-black mb-8">
            TAMSAMSOM for Kazakhstan
          </h2>

          <div class="space-y-8 sm:space-y-10">
            <!-- TAM stat block -->
            <div>
              <p class="font-['Quicksand',sans-serif] font-bold text-xl sm:text-2xl text-[#8B0000] mb-2">
                TAM — Total addressable market
              </p>
              <p class="font-['Quicksand',sans-serif] font-bold text-3xl sm:text-4xl text-black mb-1">
                365,900
              </p>
              <p class="font-['Quicksand',sans-serif] font-normal text-base sm:text-lg text-gray-600">
                people (all newborns in Kazakhstan)
              </p>
            </div>

            <!-- SAM stat block -->
            <div>
              <p class="font-['Quicksand',sans-serif] font-bold text-xl sm:text-2xl text-[#8B0000] mb-2">
                SAM — Serviceable addressable market
              </p>
              <p class="font-['Quicksand',sans-serif] font-bold text-3xl sm:text-4xl text-black mb-1">
                250,000
              </p>
              <p class="font-['Quicksand',sans-serif] font-normal text-base sm:text-lg text-gray-600">
                people (women with access to a smartphone and internet)
              </p>
            </div>

            <!-- SOM stat block -->
            <div>
              <p class="font-['Quicksand',sans-serif] font-bold text-xl sm:text-2xl text-[#8B0000] mb-2">
                SOM — Serviceable obtainable market
              </p>
              <p class="font-['Quicksand',sans-serif] font-bold text-3xl sm:text-4xl text-black mb-1">
                20,000
              </p>
              <p class="font-['Quicksand',sans-serif] font-normal text-base sm:text-lg text-gray-600">
                people (realistically achievable audience in the first year)
              </p>
            </div>
          </div>
        </div>
      </div>

      <!-- SDG section: left card + right 3-column grid -->
      <div class="sdg-section flex flex-col lg:flex-row gap-8 lg:gap-12 items-start">
        <!-- SDG 3 Card - left -->
        <div
          class="w-full lg:w-[380px] xl:w-[430px] shrink-0 bg-[#8B0000] rounded-3xl sm:rounded-[50px] p-6 sm:p-[21px] overflow-hidden"
        >
          <p class="font-['Quicksand',sans-serif] font-semibold text-4xl sm:text-5xl lg:text-[64px] text-white mb-2">
            SDG 3:
          </p>
          <p class="font-['Quicksand',sans-serif] font-medium text-2xl sm:text-3xl lg:text-[48px] text-white mb-6 max-w-[336px]">
            Good Health & Well-Being
          </p>
          <div class="w-full aspect-[4/5] max-h-[400px] sm:max-h-[476px] rounded-2xl sm:rounded-[50px] border-2 border-white overflow-hidden">
            <img
              alt="Woman in meditation"
              class="w-full h-full object-cover object-top"
              :src="img1660A86E676B47Aa0Ca1714F7C4Ed3441"
            />
          </div>
        </div>

        <!-- Right: Sustainable development goals + 3 benefits -->
        <div class="flex-1 min-w-0">
          <div class="flex flex-col sm:flex-row items-start sm:items-center gap-4 mb-8 sm:mb-12">
            <h3 class="font-['Quicksand',sans-serif] font-bold text-2xl sm:text-3xl lg:text-[40px] text-black">
              Sustainable development goals
            </h3>
            <div class="w-20 h-16 sm:w-[131px] sm:h-[117px] shrink-0">
              <img alt="UN" class="w-full h-full object-contain" :src="imgAd7E60A7D1Cdddc9082274825C9F4B901" />
            </div>
          </div>

          <div class="grid grid-cols-1 md:grid-cols-3 gap-6 lg:gap-8">
            <div class="flex flex-col">
              <div class="w-14 h-14 sm:w-[70px] sm:h-[70px] rounded-xl sm:rounded-[15px] bg-[#8B0000] flex items-center justify-center mb-4 shrink-0">
                <img alt="" class="w-6 h-6 sm:w-8 sm:h-8 object-contain" :src="imgVector" />
              </div>
              <h4 class="font-['Quicksand',sans-serif] font-medium text-xl sm:text-2xl lg:text-[32px] text-black mb-2">
                Reducing Maternal Anxiety
              </h4>
              <p class="font-['Quicksand',sans-serif] font-normal text-base sm:text-lg lg:text-[32px] text-black leading-relaxed">
                We provide continuous emotional and health monitoring to help reduce stress during pregnancy.
              </p>
            </div>

            <div class="flex flex-col">
              <div class="w-14 h-14 sm:w-[70px] sm:h-[70px] rounded-xl sm:rounded-[15px] bg-[#8B0000] flex items-center justify-center mb-4 shrink-0">
                <img alt="" class="w-6 h-6 sm:w-8 sm:h-8 object-contain" :src="imgVector1" />
              </div>
              <h4 class="font-['Quicksand',sans-serif] font-medium text-xl sm:text-2xl lg:text-[32px] text-black mb-2">
                Early Risk Detection
              </h4>
              <p class="font-['Quicksand',sans-serif] font-normal text-base sm:text-lg lg:text-[32px] text-black leading-relaxed">
                Our system identifies anxiety and health risks early through regular data tracking.
              </p>
            </div>

            <div class="flex flex-col">
              <div class="w-14 h-14 sm:w-[70px] sm:h-[70px] rounded-xl sm:rounded-[15px] bg-[#8B0000] flex items-center justify-center mb-4 shrink-0">
                <img alt="" class="w-6 h-6 sm:w-8 sm:h-8 object-contain" :src="imgGroup" />
              </div>
              <h4 class="font-['Quicksand',sans-serif] font-medium text-xl sm:text-2xl lg:text-[32px] text-black mb-2">
                Accessible Digital Support
              </h4>
              <p class="font-['Quicksand',sans-serif] font-normal text-base sm:text-lg lg:text-[32px] text-black leading-relaxed">
                We offer remote prenatal support, making care accessible beyond hospital visits.
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
