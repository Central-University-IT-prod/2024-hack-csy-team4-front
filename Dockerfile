# Базовый образ для Node.js, используемый для сборки фронтенда
FROM node:18-alpine AS build

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем package.json и package-lock.json
COPY ./package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем весь код фронтенда в контейнер
COPY public/ .

# Сборка проекта
RUN npm run build

# Используем Nginx для сервировки статических файлов
FROM nginx:alpine

# Копируем сгенерированные файлы сборки во внутреннюю директорию Nginx
COPY --from=build /app/dist /usr/share/nginx/html

# Экспонируем порт
EXPOSE 80

# Запуск Nginx
CMD ["nginx", "-g", "daemon off;"]
