class EveningSlot < ApplicationRecord
  belongs_to :doctor ,optional: :true
end
