class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :song_name
      t.integer :artist_id
      t.integer :genre_id
      t.integer :disk_id
      t.integer :number

      t.timestamps
    end
  end
end
