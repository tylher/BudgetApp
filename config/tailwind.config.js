const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    "./public/*.html",
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.js",
    "./app/views/**/*.{erb,haml,html,slim}",
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ["Inter var", ...defaultTheme.fontFamily.sans],
        poppins: "Poppins",
        proximalight: "Proxima Nova Lt",
        proximabold: "Proxima Nova Rg",
      },
      colors: {
        text: {
          500: "#434b54",
          400: "#808b99",
          300: "#aab2bb",
          200: "#c6ccd2",
        },
        main: {
          300: "#3778c2",
        },
        secondary: "#5fb523",
      },
    },
  },
  plugins: [
    require("@tailwindcss/forms"),
    require("@tailwindcss/aspect-ratio"),
    require("@tailwindcss/typography"),
  ],
};
