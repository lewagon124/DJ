class CreateMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :musics do |t|
      t.string :name
      t.string :desc
      t.integer :views
      t.string :favorite
      t.integer :like
      t.datetime :created
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
