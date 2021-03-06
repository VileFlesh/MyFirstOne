class Photo < ApplicationRecord
	belongs_to :user
	has_many :comments, dependent: :destroy

	has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "100x100>" }, validate_media_type: false
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

	validates :description, presence: true
	validates :image, presence: true

end
