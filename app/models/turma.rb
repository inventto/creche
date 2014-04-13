class Turma < ActiveRecord::Base
  validates_presence_of :nome, :professora
  validates_uniqueness_of :nome
  def to_s
    nome
  end
end
