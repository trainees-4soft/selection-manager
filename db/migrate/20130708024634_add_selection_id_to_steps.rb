class AddSelectionIdToSteps < ActiveRecord::Migration
  def change
  	add_column :steps, :selection_id, :integer
  end
end
