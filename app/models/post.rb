class Post < ActiveRecord::Base
	validates	:title, :body, presence: true
  validates :title, length: { :minimum => 4}
  validates :body, length: { :minimum => 30 }
  belongs_to :user
end

