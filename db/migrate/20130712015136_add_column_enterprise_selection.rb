class AddColumnEnterpriseSelection < ActiveRecord::Migration
 def self.up
      add_column :selections, :enterprise_id, :integer
   end
 
   def self.down
      remove_column :selections, :enterprise_id
   end
end
