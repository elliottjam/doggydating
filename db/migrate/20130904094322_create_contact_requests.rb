class CreateContactRequests < ActiveRecord::Migration
  def change
    create_table :contact_requests do |t|
      t.string :status
      t.references :from
      t.references :to
      t.timestamps
    end
  end
end
