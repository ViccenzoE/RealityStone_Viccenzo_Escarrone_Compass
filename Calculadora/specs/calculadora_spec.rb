require 'rspec'
require_relative '../src/calculadora'

describe('Calculadora') do
    calculadora = Calculadora.new

    it('Deve somar dois inteiros positivos') do
        expect(calculadora.soma(10, 5)).to eq 15
    end

    it("Deve somar números negativos") do
        expect(calculadora.soma(-1, -3)).to eq -4
    end

    it("Deve somar dois decimais") do
        expect(calculadora.soma(10.5, 3.5)).to eq 14
    end

    it("Deve somar dois decimais negativos") do
        expect(calculadora.soma(-3.6, -1.2)).to eq -4.8
    end

    it("Deve somar decimais e inteiros") do
        expect(calculadora.soma(10, -1.2)).to eq 8.8
    end

    

    it('Deve subtrair dois inteiros positivos') do
        expect(calculadora.subtrair(6, 1)).to eq 5
    end

    it("Deve subtrair números negativos") do
        expect(calculadora.subtrair(-1, -1)).to eq 0
    end

    it("Deve subtrair dois decimais") do
        expect(calculadora.subtrair(3.3, 3.4)).to eq -0.1
    end

    it("Deve subtrair dois decimais negativos") do
        expect(calculadora.subtrair(-2.5, -1.1)).to eq -1.4
    end

    it("Deve subtrair decimais e inteiros") do
        expect(calculadora.subtrair(10, 3.5)).to eq 6.5
    end



    it('Deve dividir dois inteiros positivos') do
        expect(calculadora.multiplicar(3, 2)).to eq 6
    end

    it("Deve multiplicar números negativos") do
        expect(calculadora.multiplicar(-1, -1)).to eq 1
    end

    it("Deve multiplicar dois decimais") do
        expect(calculadora.multiplicar(3.1, 2.1)).to eq 6.51
    end

    it("Deve multiplicar dois decimais negativos") do
        expect(calculadora.multiplicar(-2.5, 1.1)).to eq -2.75
    end

    it("Deve multiplicar decimais e inteiros") do
        expect(calculadora.multiplicar(10, 3.5)).to eq 35
    end
    
    it("Multiplicação por zero deve resultar em 0") do
        expect(calculadora.multiplicar(172, 0)).to eq 0
    end



    it('Deve dividir dois inteiros positivos') do
        expect(calculadora.dividir(10, 2)).to eq 5
    end

    it("Deve dividir números negativos") do
        expect(calculadora.dividir(-2, -1)).to eq 2
    end

    it("Deve dividir dois decimais") do
        expect(calculadora.dividir(6.8, 2.5)).to eq 2.72
    end

    it("Deve dividir dois decimais negativos") do
        expect(calculadora.dividir(-15, 3.5)).to eq -4.29
    end

    it("Deve dividir decimais e inteiros") do
        expect(calculadora.dividir(12, 2.5)).to eq 4.8
    end

    it("Dividendo deve ser diferente de zero") do
        expect(calculadora.dividir(12, 0)).to include 'Dividendo deve ser diferente de zero!'
    end
    


    it('Deve realizar a exponenciação de dois números inteiros positivos') do
        expect(calculadora.potencia(10, 2)).to eq 100
    end

    it("Deve realizar a exponenciação de dois números inteiros negativos") do
        expect(calculadora.potencia(-2, -3)).to eq -0.125
    end

    it("Deve realizar a exponenciação de um decimal positivo") do
        expect(calculadora.potencia(6.8, 2)).to eq 46.24
    end

    it("Expoente 0 deve resultar em valor 1") do
        expect(calculadora.potencia(4, 0)).to eq 1
    end

    it("Expoente negativo deve resultar na divisão pelo inverso de exponenciado") do
        expect(calculadora.potencia(10, -1)).to eq 0.1
    end
end