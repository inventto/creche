class Diario < ActiveRecord::Base
  belongs_to :aluno
  delegate :turma, to: :aluno
  scope :de_hoje, lambda { where("date(created_at) = date(?)", Time.now.utc)}
end
