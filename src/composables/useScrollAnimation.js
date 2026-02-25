import { onMounted } from 'vue'

export function useScrollAnimation(selector, animationClass, options = {}) {
  onMounted(() => {
    const elements = document.querySelectorAll(selector)

    const observer = new IntersectionObserver(
      (entries) => {
        entries.forEach((entry, index) => {
          if (entry.isIntersecting) {
            setTimeout(() => {
              entry.target.classList.add('animate__animated', animationClass)
              entry.target.style.opacity = '1'
            }, index * 100)
            observer.unobserve(entry.target)
          }
        })
      },
      { threshold: 0.15, ...options }
    )

    elements.forEach((el) => {
      el.style.opacity = '0'
      observer.observe(el)
    })
  })
}
