class CreatePosttags < ActiveRecord::Migration[5.2]
  def change
    create_table :posttags do |t|
      t.references :post, index: true, foreign_key: true
      t.references :tag, index: true, foreign_key: true
      t.timestamps
    end
  end
end
