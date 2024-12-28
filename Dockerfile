# Используем официальный образ Python
FROM python:3.9-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы приложения в контейнер
COPY . /app

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Устанавливаем переменную окружения для токена Telegram
ENV TELEGRAM_BOT_TOKEN=7583340226:AAHdoi3mGbZDy9ozWGHG0tdmWgdFA8J6vzg

# Команда для запуска приложения
CMD ["python", "ZodiacBot.py"]
