class CreateCartAttempts < ActiveRecord::Migration[5.1]
  def change
    create_table :cart_attempts do |t|
      t.string :body

      t.timestamps
    end
  end
end
