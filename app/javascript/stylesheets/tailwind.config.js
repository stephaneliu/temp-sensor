module.exports = {
  purge: {
    content: [
    './app/**/*.html.erb',
    './app/**/*.html.haml',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    ],
    options: {
      defaultExtractor: content => content.match(/[^<>"{\.'`\s]*[^<>"{\.'`\s:]/g) || [],
    }
  },
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {},
  },
  variants: {},
  plugins: [],
}
