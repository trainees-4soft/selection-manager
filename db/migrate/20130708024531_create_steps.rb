class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.time :hour
      t.date :date

    end
  end
end
