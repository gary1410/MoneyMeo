class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
      t.decimal :amount, :precision => 2
    end
  end
end
