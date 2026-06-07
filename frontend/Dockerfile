FROM nginx:alpine
# Hozirgi papkadagi barcha statik fayllarni nginx ichiga nusxalaydi
COPY . /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]