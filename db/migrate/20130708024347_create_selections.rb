class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.string :title
      t.text :description

    end
  end
end
