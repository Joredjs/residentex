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
      },
      transitionProperty: {
        width: "width"
      },
      gridTemplateColumns: {
        16: "repeat(16, minmax(0, 1fr))"
      },
      gridColumn: {
        "span-15": "span 15 / span 15"
      },
      gridTemplateRows: {
        10: "repeat(10, minmax(0, 1fr))"
      },
      gridRow: {
        "span-9": "span 9 / span 9"
      }
    },
    colors: {
      primario: colors.teal[300],
      secundario: colors.sky[300],
      negro: colors.slate[800],
      blanco: colors.pink[300]
    }
  },
  plugins: []
})
