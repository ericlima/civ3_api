class CreateResponsavels < ActiveRecord::Migration
  def change
    create_table :responsavels do |t|
      t.string :nome
      t.string :cpf
      t.string :email
      t.integer :GeoSiapID

      t.timestamps
    end
  end
end
