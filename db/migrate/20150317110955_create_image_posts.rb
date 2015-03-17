class CreateImagePosts < ActiveRecord::Migration
  def change
    create_table :image_posts do |t|
      t.string :title
      t.references :user, index: true

      t.timestamps
    end
  end
end
