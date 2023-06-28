const colors = require('tailwindcss/colors')

module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],

  theme: {
    extend: {
      fontFamily: {
        title: ['Emblema One', 'cursive'],
        top: ['Kosugi Maru', 'sans-serif'],
      },
      colors: {
        'maincolor': '#5c4d33',
        'headfoot': '#482f14',
        'twitter': '	#FFFFFF',
      },
    },
  },

  plugins: [require("daisyui")],
  daisyui: {
    themes: ["retro", "cupcake", "valentine"],
  },
}
