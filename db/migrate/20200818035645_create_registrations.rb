class CreateRegistrations < ActiveRecord::Migration[6.0]
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :handicap_category

      t.timestamps
    end
  end
end
