class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :breed_id
      t.integer :size
      t.integer :gender
      t.integer :age
      t.string :toy
      t.string :dog_image
      t.references :user

      t.timestamps
    end
    add_index :dogs, :user_id
  end
end
