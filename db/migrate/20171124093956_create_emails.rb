class CreateEmails < ActiveRecord::Migration[5.0]
  def change
    create_table :emails do |t|
      t.string :title
      t.text :body
      t.datetime :send_on

      t.timestamps
    end
  end
end
