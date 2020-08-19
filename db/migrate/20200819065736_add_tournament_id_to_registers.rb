class AddTournamentIdToRegisters < ActiveRecord::Migration[6.0]
  def change
    add_column :registers, :tournament_id, :integer
  end
end
