class CreateFilmTable < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.string "title"
      t.string "year"
      t.string "genre"
    end
  end
end
