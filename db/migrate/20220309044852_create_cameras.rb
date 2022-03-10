class CreateCameras < ActiveRecord::Migration[6.0]
  def change
    create_table :cameras do |t|
      t.string :title
      t.string :insta_url
      t.string :youtube_url
      t.timestamps
    end
  end
end
