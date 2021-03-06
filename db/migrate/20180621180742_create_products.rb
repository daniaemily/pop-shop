class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.datetime :sold_at
      t.monetize :asking_price, currency: { present: false}
      t.boolean :is_listed

      t.timestamps
    end
  end
end