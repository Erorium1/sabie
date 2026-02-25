<script setup>
import { useScrollAnimation } from '@/composables/useScrollAnimation'

const imgC88B81Fc2F01C2E8F421Ae72E8637Cb11 =
  'https://www.figma.com/api/mcp/asset/994a41da-2d1f-49ea-9640-31fca4f190d2'
const imgRectangle142 = 'https://www.figma.com/api/mcp/asset/b2c73905-2d74-43fe-94c1-3a2e9e1141b6'

useScrollAnimation('.ai-section', 'animate__fadeInUp')
</script>

<template>
  <section class="ai-section relative bg-gradient-to-b from-[#fff3f3] to-white overflow-hidden">
    <!-- Red background block -->
    <div
      class="absolute left-[70px] top-[9px] w-[1300px] max-w-[calc(100%-140px)] h-[800px] bg-[#7b0f1a] rounded-[50px]"
    />

    <!-- Robot/illustration - left side -->
    <div class="absolute left-[70px] top-[9px] w-[487px] h-[800px] flex items-center justify-center overflow-hidden">
      <div class="rotate-180 scale-y-[-1] w-full h-full">
        <img
          alt="AI illustration"
          class="absolute inset-0 w-[164%] h-full object-cover -left-[64%]"
          :src="imgC88B81Fc2F01C2E8F421Ae72E8637Cb11"
        />
      </div>
    </div>

    <!-- Top oval accent -->
    <div class="absolute left-[361px] top-[-114px] size-[245px] flex items-center justify-center">
      <div class="scale-y-[-1] size-full rounded-full bg-white/10" />
    </div>

    <!-- Titles -->
    <h2
      class="absolute left-[519px] top-[32px] font-['Quicksand',sans-serif] font-semibold text-[40px] leading-normal text-white"
    >
      AI technology behind Sabie
    </h2>
    <p
      class="absolute left-[626px] top-[82px] font-['Quicksand',sans-serif] font-normal text-[36px] leading-normal text-white"
    >
      How does it work?
    </p>

    <!-- Diagram/flow image -->
    <div class="absolute left-[582px] top-[240px] w-[788px] h-[569px]">
      <img alt="" class="block w-full h-full object-contain" :src="imgRectangle142" />
    </div>

    <!-- Three white feature cards -->
    <div class="absolute left-[1010px] top-[244px] w-[330px] h-[440px] bg-white rounded-[30px]" />
    <div class="absolute left-[650px] top-[537px] w-[330px] h-[242px] bg-white rounded-[30px]" />
    <div class="absolute left-[650px] top-[176px] w-[330px] h-[331px] bg-white rounded-[30px]" />

    <!-- Card content -->
    <div class="absolute left-[1040px] top-[276px] w-[260px]">
      <h3 class="font-['Quicksand',sans-serif] font-semibold text-[20px] leading-normal text-black mb-4">
        Intelligent Heart Rate Analysis
      </h3>
      <p class="font-['Quicksand',sans-serif] font-medium text-[16px] leading-normal text-black">
        The Sabie AI analyzes fetal heart rate data from the home Doppler using timestamps and
        machine learning to detect individual patterns based on gestational age and measurement
        history. It interprets four areas: Overall Heart Rate, Trends and Dynamics, Fetal Activity
        and Condition, and Recommendations and Alerts and provides daily, weekly, and monthly
        averages displayed as numbers and graphs in the app. It presents clear summaries and
        visual insights for better understanding.
      </p>
    </div>

    <div class="absolute left-[680px] top-[203px] w-[285px]">
      <h3 class="font-['Quicksand',sans-serif] font-semibold text-[20px] leading-normal text-black mb-4">
        Personalized Emotional & Informational Support
      </h3>
      <p class="font-['Quicksand',sans-serif] font-medium text-[16px] leading-normal text-black">
        Based on the current week of pregnancy and the results received from the Sabie Doppler,
        the AI displays the most frequently asked questions relevant to that stage. It provides
        personalized answers and supportive guidance to help reduce anxiety and promote maternal
        well-being.
      </p>
    </div>

    <div class="absolute left-[680px] top-[572px] w-[268px]">
      <h3 class="font-['Quicksand',sans-serif] font-semibold text-[20px] leading-normal text-black mb-4">
        AI-Assisted Shopping Planning
      </h3>
      <p class="font-['Quicksand',sans-serif] font-medium text-[16px] leading-normal text-black">
        Sabie's interactive AI helps mothers create personalized baby shopping lists by analyzing
        preferences, needs, and budget, making preparation simple and stress-free.
      </p>
    </div>
  </section>
</template>
