class AddEnterpriseIdToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :enterprise_id, :integer
  end
end
