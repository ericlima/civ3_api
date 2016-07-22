class CreateOrgaos < ActiveRecord::Migration
  def change
    create_table :orgaos do |t|
      t.string :nome
      t.string :codigo
      t.references :responsavel, index: true

      t.timestamps
    end
  end
end
