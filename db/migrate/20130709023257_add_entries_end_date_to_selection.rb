class AddEntriesEndDateToSelection < ActiveRecord::Migration
  def change
  	add_column :selections, :entries_end_date, :date
  end
end
