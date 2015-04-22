class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
    	t.decimal :amount
    	t.string :expense_type

    	t.timestamps
    end
  end
end
