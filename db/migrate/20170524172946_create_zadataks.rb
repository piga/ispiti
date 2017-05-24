class CreateZadataks < ActiveRecord::Migration
  def change
    create_table :zadataks do |t|
      t.string :problem
      t.string :solution

      t.timestamps null: false
    end
  end
end
