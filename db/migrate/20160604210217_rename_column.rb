class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :images, :art_installation_id, :installation_id
  end
end
