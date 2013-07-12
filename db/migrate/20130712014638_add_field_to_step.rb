class AddFieldToStep < ActiveRecord::Migration
  def change
  	add_column :steps, :attach_file, :boolean
  end
end
