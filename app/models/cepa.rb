class Cepa < ApplicationRecord
    has_many :vino_cepas
    has_many :vinos, through: :vino_cepas, dependent: :destroy 

    validates :nombre, presence: true, allow_blank: false
    validates :nombre, uniqueness: { case_sensitive: true }
    
end
