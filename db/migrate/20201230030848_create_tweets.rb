class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :text, null:false
      t.string :musician, null:false
      t.string :music, null:false
      t.text :image, null:false
      t.timestamps
    end
  end
end
