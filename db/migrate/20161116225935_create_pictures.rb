class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.attachment :image

      t.timestamps
    end
  end
end
