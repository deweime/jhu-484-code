class DeleteEmptyTags < ActiveRecord::Migration
  def self.up
      Tag.find(:all).each { |tag| tag.destroy if tag.documents.empty? }
    end

    def self.down
      # not much we can do to restore deleted data
      raise ActiveRecord::IrreversibleMigration
    end

end
