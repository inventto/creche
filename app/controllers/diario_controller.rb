class DiarioController < ApplicationController
  def index
    @turmas = Turma.all
  end
  def info
    @aluno = Aluno.find(params[:aluno_id])
    respond_to do |format|
      if info = @aluno.hoje!(params[:em], params[:agiu], params[:como])
        format.json { render json: info }
      else
        format.json { render json: 'error', status: :unprocessable_entity }
      end
    end
  end
  def impressao
    @turmas = Diario.de_hoje.group_by(&:turma)
    render "impressao", layout: "impressao"
  end
end

