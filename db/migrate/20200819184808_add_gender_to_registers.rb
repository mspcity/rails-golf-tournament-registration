class AddGenderToRegisters < ActiveRecord::Migration[6.0]
  def change
    add_column :registers, :gender, :string
  end
end
