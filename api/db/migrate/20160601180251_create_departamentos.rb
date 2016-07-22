class CreateDepartamentos < ActiveRecord::Migration
  def change
    create_table :departamentos do |t|
      t.string :nome
      t.string :codigo
      t.references :orgao, index: true
      t.references :responsavel, index: true

      t.timestamps
    end
  end
end
