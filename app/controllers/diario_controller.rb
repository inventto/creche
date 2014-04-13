class DiarioController < ApplicationController
  def index
    @turmas = Turma.all
  end
  def info
    Aluno.find(params[:aluno_id]).hoje!(params[:name], params[:value])
  end
end
