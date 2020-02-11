class Session < ApplicationRecord
  has_many :account_sessions
  has_many :accounts, through: :account_sessions
end
