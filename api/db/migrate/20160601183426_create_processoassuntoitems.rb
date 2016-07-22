class CreateProcessoassuntoitems < ActiveRecord::Migration
  def change
    create_table :processoassuntoitems do |t|
      t.references :processoassunto, index: true
      t.string :nome
      t.text :descricao
      t.references :responsavel, index: true
      t.references :assunto, index: true
      t.references :itemtipo, index: true
      t.references :itemmodo, index: true

      t.timestamps
    end
  end
end
