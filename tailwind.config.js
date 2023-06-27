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
      }
    }
  },

  plugins: [require("daisyui")],
  daisyui: {
    themes: ["retro", "cupcake", "valentine"],
  },
}
