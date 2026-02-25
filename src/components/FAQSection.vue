<script setup>
import { ref } from 'vue'
import { useScrollAnimation } from '@/composables/useScrollAnimation'

const faqs = [
  {
    question: "How accurate is the Sabie Doppler?",
    answer: "Our device achieves 99.2% accuracy compared to clinical-grade equipment. It uses the same Doppler technology found in hospitals.",
  },
  {
    question: "How do I use it?",
    answer: "Simply apply the sensor to your chest, open the app, and tap start. You'll get a reading in under 3 seconds. No training required.",
  },
  {
    question: "Can I share data with my doctor?",
    answer: "Yes! Export PDF reports or share data directly through the app. Many healthcare providers accept Sabie data for remote monitoring.",
  },
  {
    question: "What's the battery life?",
    answer: "The device lasts 7 days on a single charge with typical daily use. It charges via USB-C in about 2 hours.",
  },
]

const openIndex = ref(null)

function toggle(index) {
  openIndex.value = openIndex.value === index ? null : index
}

useScrollAnimation('.faq-item', 'animate__fadeInUp')
</script>

<template>
  <section class="relative bg-[#fff3f3] overflow-hidden">
    <div class="max-w-[1280px] mx-auto px-4 sm:px-8 lg:px-16 py-16 sm:py-20 lg:py-24">
      <div class="text-center mb-12 sm:mb-16">
        <p class="text-[#7b0f1a] font-semibold text-sm uppercase tracking-widest mb-4">
          FAQ
        </p>
        <h2 class="text-4xl md:text-5xl font-bold text-black mb-6">
          Common questions
        </h2>
      </div>

      <div class="max-w-3xl mx-auto space-y-4">
        <div
          v-for="(faq, index) in faqs"
          :key="index"
          class="faq-item bg-white rounded-2xl border border-gray-200 overflow-hidden"
        >
          <button
            class="w-full px-8 py-6 flex items-center justify-between text-left hover:bg-gray-50 transition-colors"
            @click="toggle(index)"
          >
            <span class="text-lg font-semibold text-black">{{ faq.question }}</span>
            <span
              class="flex-shrink-0 w-8 h-8 rounded-full bg-[#7b0f1a]/10 flex items-center justify-center transition-transform"
              :class="openIndex === index ? 'rotate-180' : ''"
            >
              <svg class="w-5 h-5 text-[#7b0f1a]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
              </svg>
            </span>
          </button>
          <div
            v-show="openIndex === index"
            class="px-8 pb-6"
          >
            <p class="text-gray-700 leading-relaxed">{{ faq.answer }}</p>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
