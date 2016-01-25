class Field < ActiveRecord::Base

  belongs_to :model
  enum attr_type: [:reference, :string, :text, :integer, :float, :decimal, :datetime, :timestamp, :time, :date, :binary, :boolean]

end

# == Schema Information
#
# Table name: fields
#
#  attr_type  :integer
#  created_at :datetime         not null
#  default    :string
#  id         :integer          not null, primary key
#  model_id   :integer
#  name       :string
#  required   :boolean
#  updated_at :datetime         not null
#
