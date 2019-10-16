class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.date :day
      t.integer :identification
      t.string :name
      t.string :email
      t.integer :cellphone
      t.references :film, foreign_key: true

      t.timestamps
    end
  end
end
