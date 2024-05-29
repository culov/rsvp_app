class CreateRsvps < ActiveRecord::Migration[7.1]
  def change
    create_table :rsvps do |t|
      t.references :event, null: false, foreign_key: true
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
