class CreateTurmas < ActiveRecord::Migration
  def change
    create_table :turmas do |t|
      t.string :nome
      t.string :professora
      t.string :professora_auxiliar

      t.timestamps
    end
  end
end
