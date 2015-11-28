module PessoasHelper
	def calculo_imc(pessoa)
		imc = (pessoa.peso/(pessoa.altura**2)).round(1) unless pessoa.peso.nil? || pessoa.altura.nil?
	end
end
