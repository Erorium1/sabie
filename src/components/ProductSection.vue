<script setup>
import { ref, onMounted, onUnmounted } from 'vue'
import { useScrollAnimation } from '@/composables/useScrollAnimation'

const slides = [
  { id: 'store', img: 'https://www.figma.com/api/mcp/asset/77fb689e-d35a-42fc-93c8-9cf0e91a3f07' },
  { id: 'milestone', img: 'https://www.figma.com/api/mcp/asset/5fe26a67-b7b4-465c-88ea-1a409e976ccb' },
  { id: 'home', img: 'https://www.figma.com/api/mcp/asset/1b91cbdf-8b8e-4c95-8847-82e927742f77' },
  { id: 'jobs', img: 'https://www.figma.com/api/mcp/asset/307a9279-491d-4fde-acf9-10465b3099cf' },
  { id: 'checkup', img: 'https://www.figma.com/api/mcp/asset/2e95ad38-12fb-4c23-bdf0-cecc7d0c512e' },
]

const currentIndex = ref(0)
const isAnimating = ref(false)
const isHovering = ref(false)

let touchStartX = 0

function goTo(index) {
  if (isAnimating.value) return
  isAnimating.value = true
  currentIndex.value = (index + slides.length) % slides.length
  setTimeout(() => (isAnimating.value = false), 500)
}

function prev() {
  goTo(currentIndex.value - 1)
}

function next() {
  goTo(currentIndex.value + 1)
}

function onTouchStart(e) {
  touchStartX = e.touches[0].clientX
}

function onTouchEnd(e) {
  const diff = touchStartX - e.changedTouches[0].clientX
  if (Math.abs(diff) > 50) {
    diff > 0 ? next() : prev()
  }
}

let autoPlay
onMounted(() => {
  autoPlay = setInterval(() => {
    if (!isHovering.value) next()
  }, 4000)
})
onUnmounted(() => clearInterval(autoPlay))

const imgD49Fb77Fa99274Ab38558749Bf740C4A2 =
  'https://www.figma.com/api/mcp/asset/26df5bb8-298f-4daf-8026-6df7b5ab0544'

useScrollAnimation('.product-slider', 'animate__fadeInLeft')
useScrollAnimation('.product-doppler-card', 'animate__fadeInRight')
</script>

<template>
  <section id="product" class="relative bg-[#8B0000] overflow-hidden">
    <!-- App screens slider -->
    <div class="max-w-[1280px] mx-auto px-4 sm:px-8 lg:px-16 py-16 sm:py-20 lg:py-24">
      <div
        class="product-slider relative w-full overflow-hidden"
        @mouseenter="isHovering = true"
        @mouseleave="isHovering = false"
        @touchstart="onTouchStart"
        @touchend="onTouchEnd"
      >
        <div class="relative min-h-[400px] sm:min-h-[500px]">
          <Transition name="slide" mode="out-in">
            <div
              :key="currentIndex"
              class="absolute inset-0 flex items-center justify-center px-4"
            >
              <div class="w-full max-w-[280px] sm:max-w-[320px] lg:max-w-[360px] mx-auto">
                <div
                  class="rounded-3xl overflow-hidden border border-white/10 aspect-[9/19] max-h-[500px] bg-black/10"
                >
                  <img
                    :src="slides[currentIndex].img"
                    :alt="`Sabie app - ${slides[currentIndex].id}`"
                    class="w-full h-full object-cover"
                  />
                </div>
              </div>
            </div>
          </Transition>
        </div>

        <!-- Arrows - hidden on mobile -->
        <button
          type="button"
          class="absolute left-4 top-1/2 -translate-y-1/2 z-10 hidden sm:flex w-12 h-12 rounded-full bg-white/20 hover:bg-white/40 items-center justify-center text-white text-2xl font-light transition-all duration-300 hover:scale-110"
          aria-label="Previous slide"
          @click="prev"
        >
          ‹
        </button>
        <button
          type="button"
          class="absolute right-4 top-1/2 -translate-y-1/2 z-10 hidden sm:flex w-12 h-12 rounded-full bg-white/20 hover:bg-white/40 items-center justify-center text-white text-2xl font-light transition-all duration-300 hover:scale-110"
          aria-label="Next slide"
          @click="next"
        >
          ›
        </button>

        <!-- Dots -->
        <div class="flex justify-center gap-2 mt-6">
          <button
            v-for="(_, i) in slides"
            :key="i"
            type="button"
            class="h-2 rounded-full transition-all duration-300"
            :class="i === currentIndex ? 'bg-white w-6' : 'bg-white/40 w-2 hover:bg-white/60'"
            :aria-label="`Go to slide ${i + 1}`"
            @click="goTo(i)"
          />
        </div>
      </div>
    </div>

    <!-- Fetal Doppler card -->
    <div class="max-w-[1280px] mx-auto px-4 sm:px-8 lg:px-16 pb-8 sm:pb-12">
      <div
        class="product-doppler-card bg-white rounded-2xl overflow-hidden flex flex-col md:flex-row border border-white/10 max-w-3xl mx-auto"
      >
        <div class="w-full md:w-[280px] h-64 md:h-80 flex-shrink-0 overflow-hidden">
          <img
            alt="Fetal Doppler device"
            class="w-full h-full object-cover object-left"
            :src="imgD49Fb77Fa99274Ab38558749Bf740C4A2"
          />
        </div>
        <div class="flex-1 p-6 md:p-8 flex flex-col justify-center">
          <h3 class="font-['Quicksand',sans-serif] font-bold text-3xl md:text-4xl text-[#1a1a1a] mb-4">
            Fetal Doppler
          </h3>
          <p class="font-['Quicksand',sans-serif] font-medium text-base text-[#1a1a1a] leading-relaxed">
            The Sabie Fetal Doppler lets expecting mothers safely monitor their baby's heartbeat at
            home. Connected to the Sabie app, it records and analyzes heart rate data, providing
            AI-based personalized pregnancy insights.
          </p>
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped>
.slide-enter-active,
.slide-leave-active {
  transition: all 0.5s ease;
}
.slide-enter-from {
  opacity: 0;
  transform: translateX(60px);
}
.slide-leave-to {
  opacity: 0;
  transform: translateX(-60px);
}
.slide-leave-active {
  position: absolute;
}
</style>
