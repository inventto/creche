class Aluno < ActiveRecord::Base
  validates_presence_of :nome
  has_many :diarios
  has_many :matriculas
  has_many :turmas, through: :matriculas
  scope :sem_matricula, -> { where("id not in (select aluno_id from matriculas)") }


  def hoje! em, agiu, como
    diario = diarios.find_or_initialize_by(em: em, agiu: agiu)
    diario.como = como
    diario.save
  end
  def turma
    turmas.last(order: "ano_letivo desc")
  end
  def to_s
    nome
  end
end
