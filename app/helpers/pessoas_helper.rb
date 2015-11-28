module PessoasHelper
	def calculo_imc(pessoa)
		imc = pessoa.peso/(pessoa.altura**2)
		imc.round(1)
	end
end
