class Cartas
  attr_reader :pinta, :numero
  def initialize(form, number)
    @pinta = form
    @numero = number
  end

def mostrar
  puts "#{@numero} de #{@pinta}"
end

end

pintas = ['Corazón', 'Picas', 'Trébol', 'Diamantes']
numeros = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']

opcion = 'entrar'
until opcion == 'salir'
  puts 'Deseas Repartir, Mostrar o Salir?'
  opcion = gets.chomp.downcase

  case opcion

  when 'repartir'
      arreglo_cartas = []
      5.times do
        arreglo_cartas << (Cartas.new(pintas.sample, numeros.sample))
      end
      puts 'Tienes 5 cartass'

    when 'mostrar'
      if arreglo_cartas == nil
        puts 'Pimero debes repartir'
      else
        arreglo_cartas.each do |carta|
          carta.mostrar
        end
      end
    when 'salir'
      puts 'Hasta Pronto!!!'

    else
      puts 'Opción no válida!'
  end
end
