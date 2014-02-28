class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :team_name
      t.string :phone
      t.boolean :paid

      t.timestamps
    end
  end
end
