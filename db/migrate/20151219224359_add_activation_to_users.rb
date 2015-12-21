class AddActivationToUsers < ActiveRecord::Migration
  #used to remove the columns
  def up
    remove_column :users, :activation_digest
    remove_column :users, :activated
    remove_column :users, :activated_at
  end

  def down
    add_column :users, :activation_digest, :string
    add_column :users, :activated, :boolean, default: false
    add_column :users, :activated_at, :datetime
  end

end
