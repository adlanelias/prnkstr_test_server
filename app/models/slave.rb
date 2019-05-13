# == Schema Information
#
# Table name: slaves
#
#  id            :bigint(8)        not null, primary key
#  name          :text
#  fill_murray   :boolean          default(FALSE)
#  place_cage    :boolean          default(FALSE)
#  custom_header :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Slave < ApplicationRecord
end
