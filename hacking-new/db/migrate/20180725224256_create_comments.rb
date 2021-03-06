# Crée une table comments et  une relation avec users, comments et links

class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.belongs_to :user, index: true
      t.belongs_to :comment, index: true
      t.belongs_to :link, index: true
      t.text :body
      t.timestamps
    end
  end
end
