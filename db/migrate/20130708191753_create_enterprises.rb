class CreateEnterprises < ActiveRecord::Migration
  def change
    create_table :enterprises do |t|
      t.string :name
      t.string :cnpj
      t.text :description
      t.string :telephone
      t.string :email

      t.timestamps
    end
  end
end
