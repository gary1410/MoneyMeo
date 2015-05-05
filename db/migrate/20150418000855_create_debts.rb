class CreateDebts < ActiveRecord::Migration
  def change
    create_table :debts do |t|
    	t.string :type
    	t.float :amount
    	t.float :monthly_payment
    	t.float :rate
    	t.string :act_primary
    	t.string :act_secondary

    	t.timestamps
    end
  end
end
