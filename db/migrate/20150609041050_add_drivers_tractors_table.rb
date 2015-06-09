class AddDriversTractorsTable < ActiveRecord::Migration
  def self.up
      create_table :drivers_tractors do |table|
         table.references :driver
         table.references :tractor
        end
    end

   def self.down
      drop_table :drivers_tractors
   end
end
