class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.string :name
      t.string :description
      t.string :url
      t.date :presentation

      t.timestamps
    end
  end
end
