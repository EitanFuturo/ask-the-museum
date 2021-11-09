class VisitorQuestion < ApplicationRecord
  validates_presence_of :text
  validates_numericality_of :visitor_age
end
