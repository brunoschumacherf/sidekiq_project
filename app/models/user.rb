class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :nome, presence: true
end
