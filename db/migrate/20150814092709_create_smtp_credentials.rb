class CreateSmtpCredentials < ActiveRecord::Migration
  def change
    create_table :smtp_credentials do |t|
      t.string :address
      t.string :user_name
      t.string :port
      t.string :domain
      t.string :authentication
      t.string :password
      t.boolean :enable_starttls_auto

      t.timestamps null: false
    end
  end
end
