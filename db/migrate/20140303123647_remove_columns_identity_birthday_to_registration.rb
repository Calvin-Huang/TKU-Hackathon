class RemoveColumnsIdentityBirthdayToRegistration < ActiveRecord::Migration
  def change
    remove_column :registrations, :birthday, :date
    remove_column :registrations, :identity, :string
  end
end
