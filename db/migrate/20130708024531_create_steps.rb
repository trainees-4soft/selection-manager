class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.time :hour
      t.date :date
      t.string :title
  	  t.text :description
      t.references :selection

    end
  end
end
