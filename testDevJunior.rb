puts "---------Postulacion dev junior ruuf.cl----------"
puts "Calcular la cantidad de paneles que caben en un techo"
puts "Calcular en base a techo cuadrado ingrese el numero 1"
puts "Calcular en base a techo triangulo isoceles ingrese el numero 2"
opcion_calculo = gets.chomp.to_i
puts "ingresaste esta opcion #{opcion_calculo}"

puts "Ingresa lado A de panel "
lado_a_panel = gets.chomp.to_i
puts "Ingresaste este numero lado A = #{lado_a_panel}"

puts "Ingresa lado B de panel "
lado_b_panel = gets.chomp.to_i
puts "Ingresaste este numero lado B = #{lado_b_panel}"


def calcular_cantidad_paneles_base_techo opcion_calculo, lado_a_panel, lado_b_panel
    case opcion_calculo
    when 1
        puts " Ingresa lado A techo"
        lado_a_techo = gets.chomp.to_i
        puts "ingresaste este numero lado A = #{lado_a_techo}"
        lado_b_techo = gets.chomp.to_i
        puts "ingresaste este numero lado B = #{lado_b_techo}"

        if lado_a_techo % 2 == 0 && lado_b_techo % 2 == 0 || lado_a_panel % 2 == 0 && lado_b_panel % 2 == 0
            puts "Caso cuando uno de los dos tiene ambas medidas pares"
            max_alto = (lado_a_techo / lado_a_panel)
            puts "max_alto_h 1 #{max_alto}"
        
            max_ancho = (lado_b_techo / lado_b_panel)
            puts "max_ancho_h 2#{max_ancho}"
            return puts "Caben #{max_alto*max_ancho} en un techo de  #{lado_a_techo}x#{lado_b_techo}"
        end
        
        area_techo = lado_a_techo * lado_b_techo
        area_panel = lado_a_panel * lado_b_panel

        return puts "Caben #{area_techo / area_panel} en un techo de  #{lado_a_techo}x#{lado_b_techo}"
    when 2
        puts " Ingresa altura del triangulo "
        lado_altura_techo = gets.chomp.to_i
        puts "ingresaste altura = #{lado_altura_techo}"

        puts " Ingresa base del triangulo "
        lado_base_techo = gets.chomp.to_i
        puts "ingresaste esta base = #{lado_base_techo}"
        
        puts "calcular triangulo isosceles"
        area_triangulo = (lado_base_techo * lado_altura_techo) / 2
        puts "area_triangulo #{area_triangulo}"
    
        area_panel = lado_a_panel * lado_b_panel
        puts "area panel #{area_panel}"
        return puts "Caben #{area_triangulo / area_panel} en un techo de  altura #{lado_altura_techo} x base #{lado_base_techo}"
    else
        puts "no existe esa opcion"
    end
end

calcular_cantidad_paneles_base_techo opcion_calculo, lado_a_panel, lado_b_panel

puts ""