class AfternoonSlot < ApplicationRecord
  belongs_to :doctor ,optional: :true
end
