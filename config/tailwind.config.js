const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  safelist: [
    "bg-orange-100", "border-orange-400", "text-orange-700",
    "bg-red-100", "border-red-400", "text-red-700",
    "bg-yellow-100", "border-yellow-400", "text-yellow-700",
    "bg-green-100", "border-green-400", "text-green-700",
    ],
    
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
