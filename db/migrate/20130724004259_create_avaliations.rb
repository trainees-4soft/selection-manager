class CreateAvaliations < ActiveRecord::Migration
  def change
    create_table :avaliations do |t|
      t.integer :step
      t.text :avaliation
      t.references :candidate

      t.timestamps
    end
    add_index :avaliations, :candidate_id
  end
end
