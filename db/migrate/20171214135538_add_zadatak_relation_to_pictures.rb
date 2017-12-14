class AddZadatakRelationToPictures < ActiveRecord::Migration
  def change
    add_reference :pictures, :zadatak, index: true, foreign_key: true
  end
end
