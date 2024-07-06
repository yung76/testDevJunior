require 'find'

def carpeta_con_tamanos(carpetas_path)
  carpetas = Dir.glob(File.join(carpetas_path, '*')).select {|f| File.directory? f }
  
  carpetas_con_tamanos = {}
  
  carpetas.each do |carpeta|
    # Nombre de la carpeta
    nombre = File.basename(carpeta)
    
    # Calcular tamaño en bytes de la carpeta
    bytes = calcular_tamano_carpeta(carpeta)
    
    # Convertir bytes a gigabytes
    gigabytes = bytes.to_f / 1024 / 1024 / 1024
    
    # Agregar al hash
    carpetas_con_tamanos[nombre] = gigabytes.round(2)
  end
  
  return carpetas_con_tamanos
end

def calcular_tamano_carpeta(carpeta)
  total_size = 0
  Find.find(carpeta) do |f|
    if File.file?(f)
      total_size += File.size(f)
    end
  end
  total_size
end

# Ruta de la carpeta principal que quieres analizar
carpeta_principal = '/ruta/a/la/carpeta/principal'

# Llamar a la función para obtener el resultado
resultado = carpeta_con_tamanos(carpeta_principal)

# Imprimir el resultado
resultado.each do |nombre, tamanos_gb|
  puts "#{nombre}: #{tamanos_gb} GB"
end
