require 'date'

class Cat < ActiveRecord::Base
  validates :sex, inclusion: { in: %w(M F),
    message: "must be M or F."}

  def age
    (Date.today.year - self.birth_date.year).to_i
  end
end
