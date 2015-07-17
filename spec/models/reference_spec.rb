require 'rails_helper'

describe Reference do
  it {should validate_presence_of :name}
  it {should validate_presence_of :phone}

end
