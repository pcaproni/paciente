class PessoasController < ApplicationController
	def index
		@pessoas = Pessoa.all 
	end

	def new
		@pessoa = Pessoa.new
	end
end
