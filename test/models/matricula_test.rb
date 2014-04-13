require 'test_helper'

class MatriculaTest < ActiveSupport::TestCase

  def cria_matricula_exemplo
    Matricula.create!(turma: Turma.first,
                      aluno:Aluno.first,
                      ano_letivo: 2014,
                      data: Time.mktime(2014,04,03))
  end
  test "matricula com dados ok" do
    assert cria_matricula_exemplo.valid?
  end
  test "nao cria duas matriculas para mesmo aluno na mesma turma" do
    assert_raise ActiveRecord::RecordInvalid do
      2.times do
        cria_matricula_exemplo
      end
    end
  end
end
