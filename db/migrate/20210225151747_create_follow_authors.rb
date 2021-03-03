class CreateFollowAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :follow_authors do |t|
      t.integer :deleted, default: 0
      t.references :author, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
