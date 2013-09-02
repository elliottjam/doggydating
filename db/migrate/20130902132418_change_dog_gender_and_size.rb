class ChangeDogGenderAndSize < ActiveRecord::Migration
  def up
    change_column :dogs, :gender, :string
    change_column :dogs, :size, :string
  end

  def down
    change_column :dogs, :gender, :integer
    change_column :dogs, :size, :integer
  end
end
