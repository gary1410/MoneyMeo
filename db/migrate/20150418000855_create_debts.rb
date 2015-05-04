class CreateDebts < ActiveRecord::Migration
  def change
    create_table :debts do |t|
    	t.string :type
    	t.decimal :amount
    	t.decimal :monthly_payment
    	t.decimal :rate
    	t.string :act_primary
    	t.string :act_secondary

    	t.timestamps
    end
  end
end
