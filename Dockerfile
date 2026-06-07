FROM eclipse-temurin:17-jdk
WORKDIR /app

# Kompyuteringizda tayyor bo'lgan jar faylni to'g'ridan-to'g'ri nusxalaydi
COPY build/libs/*.jar app.jar

EXPOSE 8080
CMD ["java", "-jar", "app.jar"]