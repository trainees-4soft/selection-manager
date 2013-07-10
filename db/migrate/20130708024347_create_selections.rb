class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.string :title
      t.text :description
      t.date :entries_end_date

    end
  end
end
