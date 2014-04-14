class CreateDiarios < ActiveRecord::Migration
  def up
    create_table :diarios do |t|
      t.references :aluno
      t.string :em, :agiu, :como

      t.timestamps
    end
  end
  def down
    drop_table :diarios
  end
end
