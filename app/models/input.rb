class Input < ApplicationRecord
  validates_length_of :input1, :minimum => 0, :allow_nil => false
  validates_length_of :input2, :minimum => 0, :allow_nil => false
end
