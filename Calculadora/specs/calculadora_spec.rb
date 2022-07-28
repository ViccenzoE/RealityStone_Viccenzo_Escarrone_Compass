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
end