class AddSelectionIdToCandidates < ActiveRecord::Migration
  def change
  	add_column :candidates, :selection_id, :integer
  end
end
