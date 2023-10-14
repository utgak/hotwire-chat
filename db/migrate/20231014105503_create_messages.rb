class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.string :body, null: false
      t.belongs_to :user, foreign_key: true
      t.belongs_to :room, null: false, foreign_key: true

      t.datetime :created_at
    end

    add_index :messages, :created_at
  end
end
