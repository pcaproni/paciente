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

    redirect_to pessoas_path
  end

  def pessoa_params
    params.require(:pessoa).permit(:nome, :data_de_nascimento, :codigo, :peso, :altura, :hipertensao, :diabetes, :colesterol, :status)
  end
  
  def destroy 
    @pessoa = Pessoa.find(params[:id])
    @pessoa.destroy
    redirect_to pessoas_path
  end 
  def show
  	@pessoa = Pessoa.find(params[:id])
 	
  end
end
