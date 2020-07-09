class Expedient < ApplicationRecord
  belongs_to :exp_type
  belongs_to :destination
  belongs_to :responsible
end
