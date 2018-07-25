class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.belongs_to :article, optional: true
      t.belongs_to :user, optional: true
      t.timestamps
    end
  end
end
