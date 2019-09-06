class AddVideoToMusic < ActiveRecord::Migration[5.2]
  def change
    add_column :musics, :video, :string
  end
end
