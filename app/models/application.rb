class Application < ActiveRecord::Base

  has_many :models

end

# == Schema Information
#
# Table name: applications
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  name       :string
#  updated_at :datetime         not null
#
