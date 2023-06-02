class Tracks < ActiveRecord::Migration[7.0]
  def change
    create_table :tracks do |t|
      t.string :name, unique: true
      t.text :description, null: true
      t.string :logo
      t.timestamps
  end
end
