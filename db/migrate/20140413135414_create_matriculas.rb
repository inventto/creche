class CreateMatriculas < ActiveRecord::Migration
  def change
    create_table :matriculas do |t|
      t.references :aluno, index: true
      t.references :turma, index: true
      t.integer :ano_letivo
      t.datetime :data

      t.timestamps
    end
  end
end
