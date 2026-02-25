<script setup>
import { useScrollAnimation } from '@/composables/useScrollAnimation'

const imgGroup101 = 'https://www.figma.com/api/mcp/asset/50e1a456-a64d-4295-bfcb-b3f5a4dd5fab'
const imgImg3940Jpg1 = 'https://www.figma.com/api/mcp/asset/4313225d-4298-4ef0-b955-3c8fe51bc1c4'
const imgImg4574Jpg1 = 'https://www.figma.com/api/mcp/asset/c752086c-77e3-4218-ba1a-1f30196699f4'

useScrollAnimation('.section-title', 'animate__fadeInDown')
useScrollAnimation('.team-card', 'animate__fadeInUp')
</script>

<template>
  <section class="relative bg-white overflow-hidden">
    <div class="max-w-[1280px] mx-auto px-4 sm:px-8 lg:px-16 py-16 sm:py-20 lg:py-24">
      <!-- Logo + Our team header -->
      <div class="section-title flex items-start gap-4 mb-8">
        <div class="flex items-start gap-3 shrink-0">
          <div class="bg-[#ff938f] rounded-[25px] size-[55px] flex items-center justify-center overflow-hidden">
            <img alt="Sabie" class="w-[28px] h-[32px] object-contain" :src="imgGroup101" />
          </div>
          <p class="font-['Quicksand',sans-serif] font-bold text-[10px] leading-normal text-[#8B0000] mt-1">
            Sabie
          </p>
        </div>
        <h2
          class="font-['Quicksand',sans-serif] font-semibold text-[40px] leading-normal text-black"
        >
          Our team
        </h2>
      </div>

      <p
        class="font-['Quicksand',sans-serif] font-medium text-[32px] leading-normal text-black w-[1076px] max-w-full mb-16"
      >
        We are a team passionate about improving maternal well-being through innovation and
        intelligent technology. We combine technology, research, and care to create smarter and
        safer pregnancy solutions.
      </p>

      <!-- Team members: 1 col mobile, 2 tablet, 2 desktop (equal squares) -->
      <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-2 gap-8 sm:gap-12 lg:gap-16">
        <div class="team-card">
          <div class="aspect-square w-full max-w-[320px] mx-auto sm:max-w-none rounded-2xl sm:rounded-[50px] overflow-hidden mb-4 sm:mb-6">
            <img
              alt="Bibinur Boshman"
              class="w-full h-full object-cover object-top"
              :src="imgImg3940Jpg1"
            />
          </div>
          <h3 class="font-['Quicksand',sans-serif] font-semibold text-2xl sm:text-3xl lg:text-[40px] leading-normal text-black mb-2 sm:mb-3">
            Bibinur Boshman
          </h3>
          <p class="font-['Quicksand',sans-serif] font-normal text-lg sm:text-xl lg:text-[32px] leading-normal text-black mb-3 sm:mb-4">
            Co-founder &<br />Business Analyst
          </p>
          <p
            class="font-['Quicksand',sans-serif] font-normal text-base sm:text-lg lg:text-[32px] leading-relaxed text-black max-w-full"
          >
            Responsible for conducting market research, identifying user needs, and developing the
            project's business model.
          </p>
        </div>

        <div class="team-card">
          <div class="aspect-square w-full max-w-[320px] mx-auto sm:max-w-none rounded-2xl sm:rounded-[50px] overflow-hidden mb-4 sm:mb-6">
            <img
              alt="Imangazy Moldir"
              class="w-full h-full object-cover object-top"
              :src="imgImg4574Jpg1"
            />
          </div>
          <h3 class="font-['Quicksand',sans-serif] font-semibold text-2xl sm:text-3xl lg:text-[40px] leading-normal text-black mb-2 sm:mb-3">
            Imangazy Moldir
          </h3>
          <p class="font-['Quicksand',sans-serif] font-normal text-lg sm:text-xl lg:text-[32px] leading-normal text-black mb-3 sm:mb-4">
            Co-founder &<br />UI/UX Designer
          </p>
          <p
            class="font-['Quicksand',sans-serif] font-normal text-base sm:text-lg lg:text-[32px] leading-relaxed text-black max-w-full"
          >
            Responsible for the application's design, ensuring a user-friendly and intuitive
            interface.
          </p>
        </div>
      </div>
    </div>
  </section>
</template>
