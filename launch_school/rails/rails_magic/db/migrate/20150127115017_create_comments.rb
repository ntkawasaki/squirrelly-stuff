class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string  :title
      t.text    :body
      t.integer :post_id

      t.timestamps null: false
      t.references :post, index: true
    end
  end
end

class AddLastCommentedOnToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :last_commented_on, :datetime
  end
end