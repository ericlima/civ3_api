class CreateItemtipos < ActiveRecord::Migration
  def change
    create_table :itemtipos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
