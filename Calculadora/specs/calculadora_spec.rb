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
end