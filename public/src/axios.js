// frontend/src/axios.js
import axios from 'axios'

const axiosInstance = axios.create({
  baseURL: 'http://{{sensitive data}}:8000', // URL вашего FastAPI сервера
  timeout: 5000,
})

export default axiosInstance