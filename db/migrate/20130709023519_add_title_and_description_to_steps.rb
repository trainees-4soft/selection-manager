class AddTitleAndDescriptionToSteps < ActiveRecord::Migration
  def change
  	add_column :steps, :title, :string
  	add_column :steps, :description, :text
  end
end
