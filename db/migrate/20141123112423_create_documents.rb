class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.string :description
      t.string :filename
      t.string :filetype
      t.integer :filesize
      t.datetime :created_at
      t.integer :owner

      t.timestamps
    end
  end
end
