json.array!(@ficheros) do |fichero|
  json.extract! fichero, :id, :Nombre, :Edad, :Casado, :Fecha, :Hora
  json.url fichero_url(fichero, format: :json)
end
