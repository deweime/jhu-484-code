module MigrationHelpers
  def add_foreign_key(table, column, target_table, target_column="id", 
                                    constraint_name="#{table.to_s}_#{target_table.to_s}_fkey")       
          execute "ALTER TABLE #{table.to_s} 
              ADD CONSTRAINT #{constraint_name.to_s} 
              FOREIGN KEY (#{column.to_s}) 
              REFERENCES #{target_table.to_s} (#{target_column.to_s});"
  end
end
