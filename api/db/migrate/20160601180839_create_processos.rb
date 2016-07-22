class CreateProcessos < ActiveRecord::Migration
  def change
    create_table :processos do |t|
      t.integer :nomero
      t.references :orgao, index: true
      t.integer :ano
      t.references :responsavel, index: true

      t.timestamps
    end
  end
end
