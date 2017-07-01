class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :autor
      t.text :content
      t.references :zadatak, foreign_key: true

      t.timestamps null: false
    end
    add_index :comments, [:zadatak_id, :created_at]
  end
end
