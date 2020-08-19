class AddAgeToRegisters < ActiveRecord::Migration[6.0]
  def change
    add_column :registers, :age, :integer
  end
end
