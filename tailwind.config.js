const formKitTailwind = require("@formkit/themes/tailwindcss");

/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx}"],
  theme: {
    extend: {
      colors: {
        Marron: "#9f7550",
        blanc: "#ffffff",
        mclair: "#ffe3ca",
        black: "#000000",
      },
      fontSize: {
        base: "0.875rem",
        lg: "1.25rem",
      },
      fontFamily: {
        modern: "Modern No. 20",
        arial: "Arial",
      },
    },
  },
  plugins: [
    require("@tailwindcss/typography"),
    require("@tailwindcss/forms"),
    formKitTailwind,
    require("@headlessui/tailwindcss"),
  ],
};
