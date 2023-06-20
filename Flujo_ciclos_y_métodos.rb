#1. Se solicita un programa que mediante el uso de métodos permita
# calcular el nuevo salario de un colaborador/a en función de un porcentaje mínimo de
# aumento establecido.

puts "*** Bienvenido/a al sistema de cálculo de tu nuevo salario en base a un porcentaje de aumento ***"
puts " "
puts "Ingrese su salario actual, en pesos, para calcular su nuevo salario: "
salario = gets.chomp.to_f

puts "Ingrese el porcentaje de aumento: "
incremento = gets.chomp.to_f

def calc_nuevo_salario(salario, incremento)
  nuevo_salario = salario + (salario * (incremento / 100))
  puts "Su nuevo salario después del % de aumento es de $#{nuevo_salario.to_i} pesos"
end

calc_nuevo_salario(salario, incremento)
puts "--------------------------------------------------"
#2. Programa que simule el juego de “Adivina el número”.

puts "***¡Bienvenido/a al juego 'Adivina el Número'!***"
puts " Este consiste en que si eliges el mismo número que escogió el computador 'tu ganas!'"
puts "¿Qué número crees que eligirá el computador? Ingresa un número del 1 al 10: "
num_jugador = gets.chomp
num_pc = rand(1..10)

while num_jugador != num_pc
  print "No has acertado, inténtalo de nuevo. "
  puts "¿Qué número crees que eligió la computadora? Ingresa de nuevo un número del 1 al 10: "
  num_jugador = gets.chomp.to_i
end

puts "¡Has acertado! Ambos eligieron el número #{num_pc}."
puts "--------------------------------------------------"

#3. utilizando como base el ejercicio de cálculo de IMC en la guía de
# ejercicios, agregar en el cálculo de Obesidad los elementos faltantes

def formula_imc(valor1, valor2)
    imc = valor1 / valor2**2
end
    
def calcular_imc(imc)
    puts("Tu índice de masa corporal es => #{imc}")

    if imc < 18.5
        puts "El índice calculado es Bajo de peso"
    elsif imc <= 18.5 || imc <= 24.9
        puts "El índice calculado es Normal"
    elsif imc <= 25.0 || imc <= 29.9
        puts "El índice calculado es Sobrepeso"
    else
        if imc <= 30 || imc <= 34.9
            puts "El índice calculado es Obesidad grado I, es moderada"
        elsif imc <= 35 || imc <= 39.9
            puts "El índice calculado es Obesidad grado II, es severa"
        else
            puts "El índice calculado es Obesidad grado III, es muy severa"
        end
    end
end
    
puts("***¡Bienvenido/a al sistema de cálculo IMC!***")
puts "Ingresa tu peso en Kilogramos: "
peso = gets.chomp.to_f
puts "Ingresa tu altura expresada en metros: "
altura = gets.chomp.to_f

resultado = calcular_imc(formula_imc(peso, altura))
puts resultado





