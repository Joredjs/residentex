/** @type {import('tailwindcss').Config} */

const withMT = require("@material-tailwind/react/utils/withMT")
const colors = require("tailwindcss/colors")

module.exports = withMT({
  content: ["./app/**/*.{ts,tsx}"],
  theme: {
    extend: {},
    //colors: require("tailwindcss/colors"),
    colors: {
      primario: colors.emerald[300],
      secundario: colors.sky[300],
      negro: colors.slate[800],
      blanco: colors.pink[300]
    },
    fontFamily: {
      //sans: [your_main_font],
      roboto: ["Roboto", "sans-serif"]
    }
  },
  plugins: []
})
