class PessoasController < ApplicationController
	def index
		@pessoas = Pessoa.all 
	end

	def new
		@pessoa = Pessoa.new
	end
	def create
		pessoa = Pessoa.new(pessoa_params)
		pessoa.save

		render :new
	end
	def pessoa_params
		params.require(:pessoa).permit(:nome, :data_de_nascimento, :codigo, :peso, :altura, :hipertensao, :diabetes, :colesterol, :status)
	end

end
