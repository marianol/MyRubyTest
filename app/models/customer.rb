# == Schema Information
# Schema version: 20101209220800
#
# Table name: customers
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  notes      :text
#  created_at :datetime
#  updated_at :datetime
#

class Customer < ActiveRecord::Base
end
