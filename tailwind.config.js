/** @type {import('tailwindcss').Config} */

const withMT = require("@material-tailwind/react/utils/withMT")
const colors = require("tailwindcss/colors")

module.exports = withMT({
  content: ["./app/**/*.{ts,tsx}"],
  theme: {
    extend: {
      fontFamily: {
        //sans: [your_main_font],
        roboto: ["Roboto", "sans-serif"]
        //roboto: ["Tilt Prism", "cursive"]
      },
      transitionProperty: {
        width: "width"
      },
      gridTemplateColumns: {
        16: "repeat(16, minmax(0, 1fr))"
      },
      gridColumn: {
        "span-14": "span 14 / span 14",
        "span-15": "span 15 / span 15"
      },
      gridTemplateRows: {
        10: "repeat(10, minmax(0, 1fr))",
        17: "repeat(17, minmax(0, 1fr))"
      },
      gridRow: {
        "span-9": "span 9 / span 9"
      },
      gridRowStart: {
        7: "7",
        10: "10",
        13: "13"
      }
    },
    colors: {
      primario: colors.teal[300],
      secundario: colors.sky[300],
      negro: colors.slate[800],
      blanco: colors.slate[100],
      slate: colors.slate
    }
  },
  plugins: []
})
