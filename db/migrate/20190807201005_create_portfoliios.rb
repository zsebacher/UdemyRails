class CreatePortfoliios < ActiveRecord::Migration[5.2]
  def change
    create_table :portfoliios do |t|
      t.string :title
      t.string :subtitle
      t.text :body
      t.text :main_image
      t.text :thumbnail

      t.timestamps
    end
  end
end
