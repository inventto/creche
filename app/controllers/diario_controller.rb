class DiarioController < ApplicationController
  def index
    @turmas = Turma.all
  end
end
