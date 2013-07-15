class AddColumnEnterpriseSelection < ActiveRecord::Migration
 d def self.up
    create_table :enterprise_selection, :id => false do |t|
      t.references :enterprise, :selection
    end
  end

  def self.down
    drop_table :enterprise_selection
  end
end