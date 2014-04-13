class CreateDiarios < ActiveRecord::Migration
  def change
    create_table :diarios do |t|
      t.string :nome
      t.text :modelo

      t.timestamps
    end
  end
end
