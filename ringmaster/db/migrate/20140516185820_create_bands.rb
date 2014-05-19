class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.string :genre
      t.text :video_url
      t.boolean :kid_friendly
      t.timestamps
    end
  end
end
