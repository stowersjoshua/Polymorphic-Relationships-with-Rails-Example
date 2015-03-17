class AddImageToImagePosts < ActiveRecord::Migration
  def change
    add_column :image_posts, :image_file_name, :string
    add_column :image_posts, :image_content_type, :string
    add_column :image_posts, :image_file_size, :integer
    add_column :image_posts, :image_updated_at, :datetime
  end
end
