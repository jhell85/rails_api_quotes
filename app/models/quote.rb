class Quote < ApplicationRecord
  validates :author, :content, presence: true

  scope :search, -> (name){ where("author like ?", "%#{name}%")}
end