class AddCheckfieldToStep < ActiveRecord::Migration
  def change
  	add_column :steps, :send_archive, :boolean
  end
end
