class CreateTournaments < ActiveRecord::Migration[6.0]
  def change
    create_table :tournaments do |t|
      t.string :name
      t.string :start_date
      t.string :end_date
      t.string :check_in
      t.string :shotgun_start
      t.string :location
      t.string :description

      t.timestamps
    end
  end
end
