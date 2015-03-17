class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.boolean :like
      t.belongs_to :voteable, polymorphic: true

      t.timestamps
    end
    add_index :votes, [:voteable_id, :voteable_type]
  end
end
