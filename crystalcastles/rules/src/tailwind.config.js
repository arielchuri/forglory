/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./**/*.md"],
  theme: {
    extend: {},
  },
  plugins: [require("@tailwindcss/typography")],
};
