require_dependency "./app/validators/url_validator.rb"

class Post < ApplicationRecord
	before_save { self.link = link.downcase }
	validates :title,	length: { maximum: 300 }
	validates :link,	presence: true, url: true
	validates :user_id,	presence: true
end
