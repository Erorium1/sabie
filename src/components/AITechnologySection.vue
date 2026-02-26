<script setup>
import { useScrollAnimation } from '@/composables/useScrollAnimation'

const imgRobot =
  'https://www.figma.com/api/mcp/asset/c8f26c6d-79f3-420d-a2a7-872fd74a64e7'

const features = [
  {
    id: 1,
    title: 'Personalized Emotional & Informational Support',
    description:
      'Based on the current week of pregnancy and the results received from the Sabie Doppler, the AI displays the most frequently asked questions relevant to that stage. It provides personalized answers and supportive guidance to help reduce anxiety and promote maternal well-being.',
  },
  {
    id: 2,
    title: 'AI-Assisted Shopping Planning',
    description:
      "Sabie's interactive AI helps mothers create personalized baby shopping lists by analyzing preferences, needs, and budget, making preparation simple and stress-free.",
  },
  {
    id: 3,
    title: 'Intelligent Heart Rate Analysis',
    description:
      "The Sabie AI analyzes fetal heart rate data from the home Doppler using timestamps and machine learning to detect individual patterns based on gestational age and measurement history. It interprets four areas: Overall Heart Rate, Trends and Dynamics, Fetal Activity and Condition, and Recommendations and Alerts and provides daily, weekly, and monthly averages displayed as numbers and graphs in the app. It presents clear summaries and visual insights for better understanding.",
  },
]

useScrollAnimation('.ai-title', 'animate__fadeInDown')
useScrollAnimation('.ai-robot', 'animate__fadeInLeft')
useScrollAnimation('.ai-card', 'animate__fadeInUp')
</script>

<template>
  <section class="relative bg-[#FFF5F5] py-20 px-4 sm:px-8 lg:px-16">
    <div class="max-w-[1280px] mx-auto">
      <!-- Crimson card: overflow-hidden clips robot on left rounded edge -->
      <div
        class="relative bg-[#6B0000] rounded-3xl overflow-hidden py-12 px-8 lg:pt-12 lg:pb-12 lg:pr-12 lg:pl-[360px]"
      >
        <!-- Robot: full height, gradient fade on right edge -->
        <div
          class="ai-robot hidden lg:block absolute top-0 left-0 bottom-0 w-[340px]"
        >
          <img
            :src="imgRobot"
            alt="AI Robot"
            class="w-full h-full object-cover"
            style="object-position: center top;"
          />
          <!-- Gradient fade right edge blends into crimson -->
          <div
            class="absolute inset-y-0 right-0 w-24 bg-gradient-to-r from-transparent to-[#6B0000]"
          />
        </div>

        <!-- Decorative rectangle behind LEFT column (two stacked cards) -->
        <div
          class="hidden lg:block"
          style="
            position: absolute;
            left: 356px;
            top: 100px;
            width: 310px;
            height: 420px;
            background: rgba(90, 0, 0, 0.5);
            border-radius: 24px;
            z-index: 0;
          "
        />

        <!-- Decorative rectangle behind RIGHT card -->
        <div
          class="hidden lg:block"
          style="
            position: absolute;
            right: 24px;
            top: 80px;
            width: 310px;
            height: 440px;
            background: rgba(90, 0, 0, 0.5);
            border-radius: 24px;
            z-index: 0;
          "
        />

        <!-- Content (z-10 so cards sit above decorative rects) -->
        <div class="relative z-10">
          <!-- Title: left-aligned above cards -->
          <div class="ai-title text-left mb-8">
            <h2 class="font-['Quicksand',sans-serif] text-3xl lg:text-4xl font-bold text-white mb-1">
              AI technology behind Sabie
            </h2>
            <p class="font-['Quicksand',sans-serif] text-white/50 text-xl">
              How does it work?
            </p>
          </div>

          <!-- Cards grid: gap-5, 2 cols on lg, z-10 above decorative rects -->
          <div class="grid grid-cols-1 lg:grid-cols-2 gap-5 relative z-10">
            <!-- Left column: 2 stacked cards -->
            <div class="flex flex-col gap-5">
              <div
                class="ai-card bg-white/95 rounded-2xl p-6 border border-white/20"
              >
                <h3 class="font-['Quicksand',sans-serif] font-bold text-gray-900 mb-2">
                  {{ features[0].title }}
                </h3>
                <p class="font-['Quicksand',sans-serif] text-gray-500 text-sm leading-relaxed">
                  {{ features[0].description }}
                </p>
              </div>
              <div
                class="ai-card bg-white/95 rounded-2xl p-6 border border-white/20"
              >
                <h3 class="font-['Quicksand',sans-serif] font-bold text-gray-900 mb-2">
                  {{ features[1].title }}
                </h3>
                <p class="font-['Quicksand',sans-serif] text-gray-500 text-sm leading-relaxed">
                  {{ features[1].description }}
                </p>
              </div>
            </div>

            <!-- Right column: 1 tall card, content vertically centered -->
            <div
              class="ai-card bg-white/95 rounded-2xl p-6 border border-white/20 lg:self-stretch flex flex-col justify-center"
            >
              <h3 class="font-['Quicksand',sans-serif] font-bold text-gray-900 mb-2">
                {{ features[2].title }}
              </h3>
              <p class="font-['Quicksand',sans-serif] text-gray-500 text-sm leading-relaxed">
                {{ features[2].description }}
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
