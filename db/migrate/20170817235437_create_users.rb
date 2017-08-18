class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :has_one
      t.testimonials :

      t.timestamps
    end
  end
end
