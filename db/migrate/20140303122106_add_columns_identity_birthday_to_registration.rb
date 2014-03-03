class AddColumnsIdentityBirthdayToRegistration < ActiveRecord::Migration
  def change
    add_column :registrations, :birthday, :date
    add_column :registrations, :identity, :string
  end
end
