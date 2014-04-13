class Aluno < ActiveRecord::Base
  validates_presence_of :nome
  has_many :diarios

  def hoje! agiu, como
    diario = diarios.find_or_initialize_by_agiu(agiu)
    diario.como = como
    diario.save
  end
  def to_s
    nome
  end
end
