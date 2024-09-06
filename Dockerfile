# Menggunakan image node:14
FROM node:14

# Mengatur working directory
WORKDIR /app

# Menyalin code utama yang berada di direktori saat ini ke working directory di dalam container
COPY . /app

# Mengatur env variable
ENV NODE_ENV=production
ENV DB_HOST=item-db

# Mengunduh (install) dan membuild app
RUN npm install --production --unsafe-perm && npm run build

# Expose port 8080 (sebenarnya tidak diperlukan namun bisa untuk mempermudah dokumentasi)
EXPOSE 8080

# Start the application
CMD ["npm", "start"]

