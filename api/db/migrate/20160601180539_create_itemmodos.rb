class CreateItemmodos < ActiveRecord::Migration
  def change
    create_table :itemmodos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
