class CreateProcessoassuntoitemmovimentos < ActiveRecord::Migration
  def change
    create_table :processoassuntoitemmovimentos do |t|
      t.references :processoassuntoitem, index: true
      t.text :descricao
      t.datetime :datasolicitacao
      t.datetime :dataatendimento
      t.references :responsavel, index: true

      t.timestamps
    end
  end
end
