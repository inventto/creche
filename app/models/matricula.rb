class Matricula < ActiveRecord::Base
  belongs_to :aluno
  belongs_to :turma
  validates_uniqueness_of :turma, scope: [:aluno, :turma]
  validates_presence_of :turma,:aluno
end
