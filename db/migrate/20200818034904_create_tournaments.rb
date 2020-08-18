class CreateTournaments < ActiveRecord::Migration[6.0]
  def change
    create_table :tournaments do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.time :check_in
      t.time :shotgun_start
      t.string :location
      t.string :description

      t.timestamps
    end
  end
end
