class DropTablePictures < ActiveRecord::Migration
 def up
    drop_table :pictures
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
