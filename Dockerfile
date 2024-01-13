FROM python:3.9-alpine

# Устанавливаем зависимости
RUN pip install flask requests

# Создаем и переключаемся в рабочий каталог
WORKDIR /app

# Копируем код в контейнер
COPY main.py /app/main.py

# Определяем переменную окружения для Flask, чтобы указать Flask работать в режиме production
ENV FLASK_ENV=production


# Запускаем сервер при старте контейнера
CMD ["python", "main.py"]



