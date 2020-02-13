class Match < ApplicationRecord
  belongs_to :learner, class_name: "Account", foreign_key: :learner_id
  belongs_to :teacher, class_name: "Account", foreign_key: :teacher_id
  belongs_to :account, required: false
end
