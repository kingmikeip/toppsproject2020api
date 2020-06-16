class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.integer :card_number
      t.integer :number_owned
      t.float :avg_price_paid
      t.float :total_price_paid
      t.string :player
      t.string :artist
      t.integer :print_run
      t.boolean :is_artist_proof
      t.boolean :is_one_of_one
      t.boolean :is_in_hand
      t.references :user, null: false, foreign_key: true
      t.boolean :is_wish_list_item
      t.float :value_per_card
      t.float :value_total

      t.timestamps
    end
  end
end
