def somar(a, b)
    "O resultado de #{a} + #{b} é #{a + b}"
  end
  
  def subtrair(a, b)
    "O resultado de #{a} - #{b} é #{a - b}"
  end
  
  def multiplicar(a, b)
    "O resultado de #{a} * #{b} é #{a * b}"
  end
  
  def dividir(a, b)
    return "Erro. Não é possível dividir por zero" if b == 0
    "O resultado de #{a} / #{b} é #{a / b}"
  end
  
  loop do
    puts "Calculadora TLC 2024 in Ruby"
  
    print "Digite o primeiro número: "
    primeiro_numero = gets.chomp.to_f
  
    print "Digite o segundo número: "
    segundo_numero = gets.chomp.to_f
  
    print "Digite a operação: (+, -, *, /): "
    operacao = gets.chomp
  
    resultado = case operacao
                when "+" then somar(primeiro_numero, segundo_numero)
                when "-" then subtrair(primeiro_numero, segundo_numero)
                when "*" then multiplicar(primeiro_numero, segundo_numero)
                when "/" then dividir(primeiro_numero, segundo_numero)
                else "Operação inválida!"
                end
  
    puts resultado
  
    print "Deseja realizar outra operação? (s/n): "
    continuar = gets.chomp.downcase
    break if continuar != 's'
  end
  
  puts "Obrigado por usar a Calculadora TLC 2024!"  