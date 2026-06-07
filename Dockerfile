FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY . .

RUN chmod +x gradlew
# Mana shu qatorni butunlay almashtirasiz:
RUN ./gradlew clean bootJar --no-daemon -Dorg.gradle.jvmargs="-Xmx512m -XX:MaxMetaspaceSize=256m"

EXPOSE 8080

CMD ["java", "-jar", "build/libs/app.jar"]