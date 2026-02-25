<script setup>
import { useScrollAnimation } from '@/composables/useScrollAnimation'

const img884C73C2Bd4E45D2Aafa0256Ab0178Be2 =
  'https://www.figma.com/api/mcp/asset/49a972fc-53a7-467e-9782-075f0cea3ae8'

useScrollAnimation('.pricing-card', 'animate__flipInX')
</script>

<template>
  <section id="monetization" class="relative bg-[#FFF5F5] overflow-hidden">
    <!-- Simple Pricing - dark red background -->
    <div class="relative bg-[#8B0000] rounded-2xl mx-4 sm:mx-8 lg:mx-16 py-12 sm:py-16 px-4 sm:px-8 lg:px-12">
      <!-- Small decorative corners - reduced size -->
      <div
        class="absolute left-0 top-0 w-16 h-24 sm:w-20 sm:h-32 bg-[rgba(255,162,162,0.15)] rounded-bl-2xl rounded-tr-2xl"
      />
      <div
        class="absolute right-0 top-0 w-16 h-24 sm:w-20 sm:h-32 bg-[rgba(255,162,162,0.15)] rounded-bl-2xl rounded-tr-2xl rotate-180 scale-y-[-1]"
      />

      <h2 class="font-['Quicksand',sans-serif] font-semibold text-3xl sm:text-4xl lg:text-[48px] text-white text-center mb-4">
        Simple Pricing
      </h2>
      <p class="font-['Quicksand',sans-serif] font-normal text-base sm:text-lg text-white text-center mb-2 max-w-xl mx-auto">
        Choose the plan that fits your needs and your budget
      </p>
      <p class="font-['Quicksand',sans-serif] font-normal text-base sm:text-lg text-white/95 text-center mb-10 max-w-2xl mx-auto">
        All plans include full access to Sabie's core features — with transparent pricing and no
        hidden limitations.
      </p>

      <!-- Pricing cards - DARK text on white, crimson checkmarks -->
      <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4 sm:gap-6 max-w-6xl mx-auto">
        <p class="col-span-1 sm:col-span-2 lg:col-span-2 font-['Quicksand',sans-serif] font-bold text-xl sm:text-2xl text-white text-center">For Moms</p>
        <p class="col-span-1 sm:col-span-2 lg:col-span-2 font-['Quicksand',sans-serif] font-bold text-xl sm:text-2xl text-white text-center">For Employers</p>
        <!-- Mom free -->
        <div class="pricing-card bg-white rounded-2xl p-5 border border-gray-200">
              <p class="font-['Quicksand',sans-serif] font-bold text-2xl text-[#1a1a1a] text-center mb-2">Free</p>
              <p class="font-['Quicksand',sans-serif] font-semibold text-lg text-[#1a1a1a] text-center mb-3">Mom free</p>
              <div class="h-px bg-gray-200 my-3" />
              <p class="font-['Quicksand',sans-serif] font-normal text-sm text-[#4a4a4a] text-center mb-3">Includes</p>
              <ul class="space-y-2">
                <li class="flex gap-2 items-start text-sm text-[#1a1a1a]">
                  <span class="text-[#8B0000] shrink-0">✓</span>
                  <span>Use the Doppler device up to three times per week</span>
                </li>
                <li class="flex gap-2 items-start text-sm text-[#1a1a1a]">
                  <span class="text-[#8B0000] shrink-0">✓</span>
                  <span>Free yoga & workout access</span>
                </li>
                <li class="flex gap-2 items-start text-sm text-[#1a1a1a]">
                  <span class="text-[#8B0000] shrink-0">✓</span>
                  <span>Unlimited job applications</span>
                </li>
                <li class="flex gap-2 items-start text-sm text-[#1a1a1a]">
                  <span class="text-[#8B0000] shrink-0">✓</span>
                  <span>Milestone journal (2–3 photos per entry)</span>
                </li>
                <li class="flex gap-2 items-start text-sm text-[#1a1a1a]">
                  <span class="text-[#8B0000] shrink-0">✓</span>
                  <span>Only view doctors' schedules</span>
                </li>
              </ul>
            </div>

            <!-- Mom premium -->
            <div class="pricing-card bg-white rounded-2xl p-5 border border-gray-200">
              <p class="font-['Quicksand',sans-serif] font-bold text-2xl text-[#1a1a1a] text-center mb-2">$8.00</p>
              <p class="font-['Quicksand',sans-serif] font-semibold text-lg text-[#1a1a1a] text-center mb-3">Mom premium</p>
              <div class="h-px bg-gray-200 my-3" />
              <p class="font-['Quicksand',sans-serif] font-normal text-sm text-[#4a4a4a] text-center mb-3">Includes</p>
              <ul class="space-y-2">
                <li class="flex gap-2 items-start text-sm text-[#1a1a1a]">
                  <span class="text-[#8B0000] shrink-0">✓</span>
                  <span>Everything in free</span>
                </li>
                <li class="flex gap-2 items-start text-sm text-[#1a1a1a]">
                  <span class="text-[#8B0000] shrink-0">✓</span>
                  <span>Unlimited Doppler use</span>
                </li>
                <li class="flex gap-2 items-start text-sm text-[#1a1a1a]">
                  <span class="text-[#8B0000] shrink-0">✓</span>
                  <span>Advanced AI heart rate analysis with personalized insights</span>
                </li>
                <li class="flex gap-2 items-start text-sm text-[#1a1a1a]">
                  <span class="text-[#8B0000] shrink-0">✓</span>
                  <span>Online doctor appointment booking</span>
                </li>
                <li class="flex gap-2 items-start text-sm text-[#1a1a1a]">
                  <span class="text-[#8B0000] shrink-0">✓</span>
                  <span>Unlimited Milestone journal (full storage)</span>
                </li>
              </ul>
            </div>

        <!-- Post free -->
        <div class="pricing-card bg-white rounded-2xl p-5 border border-gray-200">
              <p class="font-['Quicksand',sans-serif] font-bold text-2xl text-[#1a1a1a] text-center mb-2">Free</p>
              <p class="font-['Quicksand',sans-serif] font-semibold text-lg text-[#1a1a1a] text-center mb-3">Post free</p>
              <div class="h-px bg-gray-200 my-3" />
              <p class="font-['Quicksand',sans-serif] font-normal text-sm text-[#4a4a4a] text-center mb-3">Includes</p>
              <ul class="space-y-2">
                <li class="flex gap-2 items-start text-sm text-[#1a1a1a]">
                  <span class="text-[#8B0000] shrink-0">✓</span>
                  <span>Post one job opening for free</span>
                </li>
                <li class="flex gap-2 items-start text-sm text-[#1a1a1a]">
                  <span class="text-[#8B0000] shrink-0">✓</span>
                  <span>Active for 15 days</span>
                </li>
                <li class="flex gap-2 items-start text-sm text-[#1a1a1a]">
                  <span class="text-[#8B0000] shrink-0">✓</span>
                  <span>No financial risk</span>
                </li>
              </ul>
            </div>

        <!-- Post paid -->
        <div class="pricing-card bg-white rounded-2xl p-5 border border-gray-200">
              <p class="font-['Quicksand',sans-serif] font-bold text-2xl text-[#1a1a1a] text-center mb-2">$4.00</p>
              <p class="font-['Quicksand',sans-serif] font-semibold text-lg text-[#1a1a1a] text-center mb-3">Post paid</p>
              <div class="h-px bg-gray-200 my-3" />
              <p class="font-['Quicksand',sans-serif] font-normal text-sm text-[#4a4a4a] text-center mb-3">Includes</p>
              <ul class="space-y-2">
                <li class="flex gap-2 items-start text-sm text-[#1a1a1a]">
                  <span class="text-[#8B0000] shrink-0">✓</span>
                  <span>One job for long period</span>
                </li>
                <li class="flex gap-2 items-start text-sm text-[#1a1a1a]">
                  <span class="text-[#8B0000] shrink-0">✓</span>
                  <span>Active for 30 days</span>
                </li>
                <li class="flex gap-2 items-start text-sm text-[#1a1a1a]">
                  <span class="text-[#8B0000] shrink-0">✓</span>
                  <span>Each additional vacancy: +$2</span>
                </li>
              </ul>
            </div>
      </div>
    </div>

    <!-- Fetal Doppler CTA - NO shadow on device -->
    <div class="max-w-[1280px] mx-auto px-4 sm:px-8 lg:px-16 py-8 sm:py-12">
      <div class="bg-[#8B0000] rounded-2xl p-6 sm:p-10 flex flex-col lg:flex-row items-center justify-between gap-8">
        <h3 class="font-['Quicksand',sans-serif] font-bold text-4xl sm:text-6xl lg:text-[80px] text-white text-center lg:text-left">
          Fetal Doppler
        </h3>
        <div class="w-40 h-56 sm:w-48 sm:h-64 rounded-xl overflow-hidden border border-white/10 flex-shrink-0">
          <img
            alt="Sabie Doppler"
            class="w-full h-full object-cover object-top"
            :src="img884C73C2Bd4E45D2Aafa0256Ab0178Be2"
          />
        </div>
        <div class="text-center lg:text-left">
          <p class="font-['Quicksand',sans-serif] font-semibold text-xl text-white mb-2">
            Carefully calculated and fair price
          </p>
          <p class="font-['Quicksand',sans-serif] font-normal text-sm sm:text-base text-white/95 mb-4 max-w-sm">
            Stay connected with your baby every week. Choose the plan that fits your needs and budget:
          </p>
          <div class="flex items-center justify-center lg:justify-start gap-3">
            <p class="font-['Quicksand',sans-serif] font-normal text-base text-white">Actual price:</p>
            <div class="bg-white rounded-full px-6 py-2 border border-[#ffbfbf]">
              <p class="font-['Quicksand',sans-serif] font-bold text-2xl text-[#8B0000]">$38</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
