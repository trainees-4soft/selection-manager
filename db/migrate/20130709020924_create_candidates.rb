class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :email
      t.string :telephone
      t.string :facebook
      t.text :about
      t.references :selection

      t.timestamps
    end
  end
end
