class List < ApplicationRecord
    has_many :bookmarks
    validates :name, uniqueness: true, presence:true
    has_many :movies, through: :bookmarks, dependent: :destroy
    has_one_attached :photo
end
