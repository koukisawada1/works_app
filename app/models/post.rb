class Post < ApplicationRecord

	has_many :images, dependent: :destroy
	belongs_to :user

end
