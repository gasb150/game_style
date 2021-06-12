class Proyect < ApplicationRecord
  belongs_to :framework
  belongs_to :language
  belongs_to :skill
end
