class Calculadora
    
    def soma(a, b)
        a + b
    end

    def subtrair(a, b)
      subtracao =  a - b
      subtracao.round(1)
    end
    
    def multiplicar(a, b)
        multplicacao = a * b
        multplicacao.round(2)
    end

    def dividir(a, b)
        if b == 0
            return 'Dividendo deve ser diferente de zero!'
        end
        divisao = a / b
        divisao.round(2)
    end
end
    