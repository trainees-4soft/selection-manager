class AddColumnEnterpriseUser < ActiveRecord::Migration
   
   def self.up
      add_column :users, :enterprise_id, :integer
   end
 
   def self.down
      remove_column :users, :enterprise_id
   end
end
