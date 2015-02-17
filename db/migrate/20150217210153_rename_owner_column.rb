class RenameOwnerColumn < ActiveRecord::Migration
  def change
    rename_column :documents, :owner, :user_id
  end
end
