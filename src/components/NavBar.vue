<script setup>
import { ref, onMounted } from 'vue'

const isMenuOpen = ref(false)

const navItems = [
  { id: 'about', label: 'About StartUp' },
  { id: 'features', label: 'Features' },
  { id: 'product', label: 'Product' },
  { id: 'monetization', label: 'Monetization' },
]

const imgGroup101 = 'https://www.figma.com/api/mcp/asset/7052f6fa-368f-4c1e-b4d5-2a759792daf6'
const imgGroup104 = 'https://www.figma.com/api/mcp/asset/6b848042-e6ae-48dd-bc04-f74fcc824789'
const imgYoutube = 'https://www.figma.com/api/mcp/asset/84fb382d-2748-452f-8f84-7501f2a802f6'

function closeMenu() {
  isMenuOpen.value = false
}

onMounted(() => {
  const nav = document.querySelector('.nav-bar')
  if (nav) {
    nav.classList.add('animate__animated', 'animate__fadeInDown')
  }
})
</script>

<template>
  <nav class="nav-bar fixed top-0 left-0 right-0 w-full z-50 bg-[#7b0f1a]">
    <div class="max-w-[1280px] mx-auto px-4 sm:px-8 lg:px-16 flex items-center justify-between py-4">
      <!-- Logo - always visible -->
      <a href="#home" class="flex items-center gap-2 sm:gap-3 lg:gap-4 shrink-0">
        <div class="bg-[#ff938f] rounded-[20px] sm:rounded-[25px] flex items-center justify-center overflow-hidden w-12 h-12 sm:w-14 sm:h-14 lg:w-16 lg:h-16">
          <img alt="Sabie" class="w-7 h-8 sm:w-8 sm:h-9 lg:w-10 lg:h-11 object-contain" :src="imgGroup101" />
        </div>
        <span class="font-['Quicksand',sans-serif] font-bold text-white text-base sm:text-lg lg:text-xl">
          Sabie
        </span>
      </a>

      <!-- Nav links - HIDDEN on mobile, visible on sm+ (640px+) -->
      <div class="hidden sm:flex items-center gap-2 lg:gap-4">
        <a
          v-for="item in navItems"
          :key="item.id"
          :href="item.id === 'about' ? '#home' : `#${item.id}`"
          class="px-3 py-2 lg:px-5 lg:py-2.5 rounded-full text-sm lg:text-base font-bold transition-colors duration-200"
          :class="item.id === 'about' ? 'bg-white text-[#8B0000]' : 'text-white hover:bg-white/20'"
        >
          {{ item.label }}
        </a>
      </div>

      <!-- Right side: decorative icons on desktop, hamburger on mobile -->
      <!-- Footprints + YouTube - hidden on mobile/tablet, visible on lg+ -->
      <div class="hidden lg:flex items-center gap-2 shrink-0">
        <div class="h-16 w-8">
          <img alt="" class="block size-full object-contain object-bottom" :src="imgGroup104" />
        </div>
        <div class="size-12">
          <img alt="" class="block size-full object-contain" :src="imgYoutube" />
        </div>
      </div>

      <!-- Hamburger - VISIBLE on mobile only (hidden on sm+) -->
      <button
        class="sm:hidden p-3 min-h-[44px] min-w-[44px] flex items-center justify-center text-white"
        type="button"
        aria-label="Toggle menu"
        aria-expanded="isMenuOpen"
        @click="isMenuOpen = !isMenuOpen"
      >
        <svg v-if="!isMenuOpen" class="w-7 h-7" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
        </svg>
        <svg v-else class="w-7 h-7" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
        </svg>
      </button>
    </div>

    <!-- Mobile fullscreen overlay - v-if + Transition -->
    <Transition
      enter-active-class="transition-opacity duration-300 ease-out"
      enter-from-class="opacity-0"
      enter-to-class="opacity-100"
      leave-active-class="transition-opacity duration-300 ease-out"
      leave-from-class="opacity-100"
      leave-to-class="opacity-0"
    >
      <div
        v-if="isMenuOpen"
        class="fixed inset-0 bg-[#8B0000] flex flex-col items-center justify-center gap-8 sm:hidden z-40 pt-20"
        @click.self="closeMenu"
      >
        <a
          v-for="item in navItems"
          :key="item.id"
          :href="item.id === 'about' ? '#home' : `#${item.id}`"
          class="text-white text-xl font-semibold px-8 py-4 min-h-[44px] flex items-center justify-center hover:bg-white/10 rounded-xl w-full max-w-xs transition-colors"
          @click="closeMenu"
        >
          {{ item.label }}
        </a>
      </div>
    </Transition>
  </nav>
</template>
