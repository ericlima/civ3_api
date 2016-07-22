class CreateAssuntos < ActiveRecord::Migration
  def change
    create_table :assuntos do |t|
      t.string :nome
      t.references :grupoassunto, index: true
      t.references :responsavel, index: true
      t.integer :prazoqtd
      t.string :prazotipo

      t.timestamps
    end
  end
end
