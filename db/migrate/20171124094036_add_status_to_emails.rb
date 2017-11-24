class AddStatusToEmails < ActiveRecord::Migration[5.0]
  def change
    add_column :emails, :status, :string
  end
end
