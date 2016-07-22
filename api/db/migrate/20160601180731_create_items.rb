class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :nome
      t.text :descricao
      t.references :responsavel, index: true
      t.references :assunto, index: true
      t.references :itemmodo, index: true
      t.references :itemtipo, index: true
      t.integer :prazoqtd
      t.string :prazotipo

      t.timestamps
    end
  end
end
