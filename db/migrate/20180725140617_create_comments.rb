class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.belongs_to :user, optional: true
      t.belongs_to :article, optional: true
      t.text :content
      t.timestamps
    end
  end
end
