# Usa una imagen base de Ruby
FROM ruby:3.1-slim

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia los archivos del proyecto al contenedor
COPY Gemfile Gemfile.lock ./
COPY app.rb .

# Instala las dependencias de Ruby
RUN bundle install

# Expone el puerto que usará Sinatra
EXPOSE 4567

# Comando para ejecutar la aplicación
CMD ["ruby", "app.rb"]
