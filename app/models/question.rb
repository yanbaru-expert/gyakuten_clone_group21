class Question < ApplicationRecord
	validates :title, :detail, presence: true

  has_many :solutions
end
