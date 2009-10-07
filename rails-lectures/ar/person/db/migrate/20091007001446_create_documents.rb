class CreateDocuments < ActiveRecord::Migration
  def self.up
    create_table :documents do |t|
      t.string :title
      t.text :body
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :documents
  end
end
