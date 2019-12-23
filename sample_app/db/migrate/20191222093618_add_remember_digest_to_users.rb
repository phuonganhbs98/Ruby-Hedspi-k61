class AddRememberDigestToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :remember_digest, :string
  end

  #Returns a random token
  # def User.new_token
  #   SecureRandom.urlsafe_base64
  # end
end
