<script setup>
import { useScrollAnimation } from '@/composables/useScrollAnimation'

const imgVector100 = 'https://www.figma.com/api/mcp/asset/101db9d6-b9b2-4e0d-a1a7-cbda97f300c5'

useScrollAnimation('.footer-content', 'animate__fadeInUp')
const imgYoutube = 'https://www.figma.com/api/mcp/asset/364aecaa-1242-49e8-99e7-a1b26db8763a'
</script>

<template>
  <footer class="bg-[#ffbfbf] overflow-hidden">
    <div class="max-w-[1280px] mx-auto px-4 sm:px-8 lg:px-16 py-16 sm:py-20">
      <div class="footer-content flex flex-wrap items-start justify-between gap-12">
        <!-- Sabie brand -->
        <div class="flex items-center gap-4">
          <p class="font-['Quicksand',sans-serif] font-bold text-[96px] leading-normal text-white">
            Sabie
          </p>
          <div class="w-px h-[150px] flex items-center">
            <img alt="" class="h-full w-auto object-contain" :src="imgVector100" />
          </div>
          <p class="font-['Quicksand',sans-serif] font-normal text-[32px] leading-normal text-[#7b0f1a]">
            Founded in 2025
          </p>
        </div>

        <!-- Contact -->
        <div class="text-right">
          <p class="font-['Quicksand',sans-serif] font-normal text-[24px] leading-normal text-[#7b0f1a] mb-2">
            Contact us:
          </p>
          <a
            href="mailto:mimangazy4@gmail.com"
            class="font-['Quicksand',sans-serif] font-normal text-[24px] leading-normal text-[#7b0f1a] hover:underline block"
          >
            mimangazy4@gmail.com
          </a>
          <a
            href="mailto:bibinurboshmann@gmail.com"
            class="font-['Quicksand',sans-serif] font-normal text-[24px] leading-normal text-[#7b0f1a] hover:underline block"
          >
            bibinurboshmann@gmail.com
          </a>
        </div>

        <!-- YouTube -->
        <a href="#" class="size-[42px] shrink-0" aria-label="YouTube">
          <img alt="" class="block size-full object-contain" :src="imgYoutube" />
        </a>
      </div>
    </div>
  </footer>
</template>
