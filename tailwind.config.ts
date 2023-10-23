import type { Config } from 'tailwindcss'

const config: Config = {
  content: [
    './pages/**/*.{js,ts,jsx,tsx,mdx}',
    './components/**/*.{js,ts,jsx,tsx,mdx}',
    './app/**/*.{js,ts,jsx,tsx,mdx}',
  ],
  theme: {
    extend: {
  
      colors: {
        'black': '#000000',
        'red': '#E9291B'
      },
      fontFamily: {
        'body': ['poppins'],
      },
      fontSize: {
        l:['18px', '23px'],
        lg: ['20px', '23px'],
        xl: ['40px', '60px'],
      }
    },
  },
  plugins: [],
}
export default config
