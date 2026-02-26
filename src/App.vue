<script setup>
import NavBar from '@/components/NavBar.vue'
import HeroSection from '@/components/HeroSection.vue'
import FeaturesSection from '@/components/FeaturesSection.vue'
import WhyNeedSection from '@/components/WhyNeedSection.vue'
import StatsSection from '@/components/StatsSection.vue'
import ProductSection from '@/components/ProductSection.vue'
import AppShowcaseSection from '@/components/AppShowcaseSection.vue'
import AITechnologySection from '@/components/AITechnologySection.vue'
import TestimonialsSection from '@/components/TestimonialsSection.vue'
import CTASection from '@/components/CTASection.vue'
import VideoSection from '@/components/VideoSection.vue'
import FAQSection from '@/components/FAQSection.vue'
import FooterSection from '@/components/FooterSection.vue'
</script>

<template>
  <div class="min-h-screen">
    <NavBar />
    <main>
      <HeroSection />
      <FeaturesSection />
      <WhyNeedSection />
      <StatsSection />
      <ProductSection />
      <AppShowcaseSection />
      <TestimonialsSection />
      <CTASection />
      <VideoSection />
      <AITechnologySection />
      <FAQSection />
      <FooterSection />
    </main>
  </div>
</template>
