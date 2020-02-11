class Account < ApplicationRecord
  has_many :account_sessions
  has_many :sessions, through: :account_sessions
end
