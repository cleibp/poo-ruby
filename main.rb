# Classe base abstrata (com abstração)
class Forma
  def calcular_area
    raise NotImplementedError, "Método abstrato deve ser implementado nas subclasses"
  end
end

# Subclasse que herda de Forma
class Retangulo < Forma
  def initialize(base, altura)
    @base = base
    @altura = altura
  end

  def calcular_area
    @base * @altura
  end
end

# Subclasse que herda de Forma
class Circulo < Forma
  def initialize(raio)
    @raio = raio
  end

  def calcular_area
    Math::PI * @raio**2
  end
end

# Função principal
def main
  # Criar uma forma de retângulo
  retangulo = Retangulo.new(5.0, 4.0)

  # Calcular e imprimir a área do retângulo
  puts "Área do Retângulo: #{retangulo.calcular_area}"

  # Criar uma forma de círculo
  circulo = Circulo.new(3.0)

  # Calcular e imprimir a área do círculo
  puts "Área do Círculo: #{circulo.calcular_area}"
end

# Chamar a função principal
main
