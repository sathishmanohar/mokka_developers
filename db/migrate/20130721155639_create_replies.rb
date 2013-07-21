class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.belongs_to :topic
      t.text :body

      t.timestamps
    end
  end
end
