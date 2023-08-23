import axios from 'axios';

const axiosClient = axios.create({
    baseURL: '/api',
    headers: { 'Content-Type': 'application/json' },
    withCredentials: true,
});

export default axiosClient;
