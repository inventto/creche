class Turma < ActiveRecord::Base
  validates_presence_of :nome, :professora
  validates_uniqueness_of :nome
  has_many :matriculas
  has_many :alunos, through: :matriculas
  def to_s
    nome
  end
end
