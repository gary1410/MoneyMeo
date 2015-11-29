class Expense < ActiveRecord::Base

  def self.types
    ['Rent', 'Health Insurance', 'Phone', 'Utilities', 'Transportation', 'Food', 'Entertainment', 'other']
  end

end