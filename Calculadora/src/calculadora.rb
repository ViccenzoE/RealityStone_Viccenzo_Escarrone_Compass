class Calculadora
    
    def soma(soma1, soma2)
        if soma1.class == String || soma2.class == String
            return 'Soma deve conter somente números!'
        end
        soma1 + soma2
    end

    def subtrair(subtrai1, subtrai2)
        if subtrai1.class == String || subtrai2.class == String
            return 'Subtração deve conter somente números!'
        end
        subtracao =  subtrai1 - subtrai2
        subtracao.round(1)
    end
    
    def multiplicar(multiplica1, multiplica2)
        if multiplica1.class == String || multiplica2.class == String
            return 'Multiplicação deve conter somente números!'
        end
        multplicacao = multiplica1 * multiplica2
        multplicacao.round(2)
    end

    def dividir(divide1, divide2)
        if divide1.class == String || divide2.class == String
            return 'Divisão deve conter somente números!'
        end
        if divide2 == 0
            return 'Dividendo deve ser diferente de zero!'
        end
        divisao = divide1 / divide2
        divisao.round(2)
    end

    def potencia(potencia1, potencia2)
        if potencia1.class == String || potencia2.class == String
            return 'Potenciação deve conter somente números!'
        end
        exponenciacao = potencia1 ** potencia2
        exponenciacao.round(3)
    end

    def raiz(radical)
        if radical.class == String
            return 'Raíz quadrada deve conter somente números!'
        end
        if radical < 0
            return 'Raíz quadrada inváldia, número menor que zero!'
        end
        raizQuadrada = Math.sqrt(radical)
        raizQuadrada.round(2)
    end
end
    