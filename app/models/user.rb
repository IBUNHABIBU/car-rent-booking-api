class User < ApplicationRecord
 has_secure_password
 validates :name, presence: true, length: { maximum: 10, minimum: 3 }
 validates :email, presence: true, length: { maximum: 16, minimum: 3 }
 validates :password, presence: true, length: { maximum: 10, minimum: 3 }
end
