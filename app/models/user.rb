class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :username, presence: true
end
