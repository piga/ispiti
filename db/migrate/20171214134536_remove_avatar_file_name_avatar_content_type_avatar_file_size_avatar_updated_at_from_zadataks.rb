class RemoveAvatarFileNameAvatarContentTypeAvatarFileSizeAvatarUpdatedAtFromZadataks < ActiveRecord::Migration
  def change
    remove_column :zadataks, :avatar_file_name, :string
    remove_column :zadataks, :avatar_content_type, :string
    remove_column :zadataks, :avatar_file_size, :integer
    remove_column :zadataks, :avatar_updated_at, :datetime
  end
end
