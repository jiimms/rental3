class Product < ActiveRecord::Base
	has_many :items
	accepts_nested_attributes_for :items, reject_if: :all_blank, allow_destroy: true
	validates :category, presence: true
end
