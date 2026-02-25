<script setup>
import { ref } from 'vue'
import { useScrollAnimation } from '@/composables/useScrollAnimation'

const img884C73C2Bd4E45D2Aafa0256Ab0178Be1 =
  'https://www.figma.com/api/mcp/asset/3d54dc4a-da28-4c0f-bd90-99e9125976fb'

useScrollAnimation('.hero-text', 'animate__fadeInLeft')
useScrollAnimation('.hero-image', 'animate__fadeInRight')

const buttonHover = ref(false)
</script>

<template>
  <section id="home" class="relative min-h-screen overflow-hidden bg-[#7b0f1a] pt-24 sm:pt-32 lg:pt-[180px]">
    <div class="max-w-[1280px] mx-auto px-4 sm:px-8 lg:px-16 flex flex-col lg:flex-row items-center lg:items-start justify-between gap-8 lg:gap-16">
      <!-- Left content - full width on mobile -->
      <div class="hero-text relative flex-1 w-full max-w-[576px] order-2 lg:order-1 text-center lg:text-left">
        <!-- Sparkle above SABIE -->
        <div class="absolute left-1/2 lg:left-0 -translate-x-1/2 lg:translate-x-0 top-[-8px] w-6 h-6 text-white opacity-90">
          <svg viewBox="0 0 24 24" fill="currentColor" class="size-full">
            <path d="M12 0L14.5 9.5L24 12L14.5 14.5L12 24L9.5 14.5L0 12L9.5 9.5L12 0Z" />
          </svg>
        </div>

        <h1
          class="font-['Quicksand',sans-serif] font-bold text-[80px] md:text-[100px] lg:text-[128px] leading-[1] text-white mb-0"
          style="margin-top: 0"
        >
          SABIE
        </h1>

        <p
          class="font-['Quicksand',sans-serif] font-semibold text-[24px] md:text-[28px] lg:text-[32px] leading-[1] text-white mt-[32px] mb-[23px]"
        >
          What is this <span class="text-[#df6666]">project</span> about?
        </p>

        <p
          class="font-['Quicksand',sans-serif] font-medium text-[20px] md:text-[26px] lg:text-[30px] leading-relaxed text-white max-w-[576px] mx-auto lg:mx-0"
        >
          Sabie brings together medical care, daily support, and community. Monitor your baby's
          heartbeat at home, connect with doctors, and access resources designed for every stage of
          motherhood.
        </p>

        <!-- Sparkle near button -->
        <div class="absolute left-0 top-[485px] w-5 h-5 text-white opacity-90">
          <svg viewBox="0 0 24 24" fill="currentColor" class="size-full">
            <path d="M12 0L14.5 9.5L24 12L14.5 14.5L12 24L9.5 14.5L0 12L9.5 9.5L12 0Z" />
          </svg>
        </div>

        <!-- Take a look button - pulse on hover -->
        <a
          href="#product"
          class="hero-button inline-flex items-center justify-center h-16 sm:h-[80px] w-full max-w-[280px] rounded-[40px] bg-[#ff938f] border border-[#ff8e8e] mt-[40px] font-['Quicksand',sans-serif] font-semibold text-2xl sm:text-[36px] text-white hover:bg-[#ff9e9a] transition-colors mx-auto lg:mx-0"
          :class="buttonHover ? 'animate__animated animate__pulse animate__infinite' : ''"
          @mouseenter="buttonHover = true"
          @mouseleave="buttonHover = false"
        >
          Take a look
        </a>
      </div>

      <!-- Right - Product imagery: stack below text on mobile -->
      <div class="hero-image relative flex-1 w-full flex justify-center lg:justify-end items-start order-2 lg:order-2 min-h-0 lg:min-h-[500px]">
        <div class="relative w-full max-w-[400px]">
          <div
            class="relative w-full max-w-[400px] aspect-[400/717] max-h-[500px] sm:max-h-[600px] lg:max-h-[717px] mx-auto overflow-hidden rounded-lg border border-gray-200"
          >
            <img
              alt="Sabie app and Doppler device"
              class="absolute inset-0 w-full h-full object-cover object-top"
              :src="img884C73C2Bd4E45D2Aafa0256Ab0178Be1"
            />
          </div>
          <p
            class="absolute left-1/2 -translate-x-1/2 bottom-4 font-['Quicksand',sans-serif] font-semibold text-base sm:text-[20px] text-black"
          >
            Sabie
          </p>
        </div>
      </div>
    </div>
  </section>
</template>
