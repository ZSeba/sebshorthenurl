class CreateUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :urls do |t|
      t.string :shortened_url
      t.text :original_url

      t.timestamps
    end
  end
end
