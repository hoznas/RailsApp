class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.integer :person_id
      t.text :title
      t.text :message

      t.timestamps
    end
  end
end
