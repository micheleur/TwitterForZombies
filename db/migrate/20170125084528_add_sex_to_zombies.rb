class AddSexToZombies < ActiveRecord::Migration
  def change
    add_column :zombies, :sex, :string, limit: 1
  end
end
