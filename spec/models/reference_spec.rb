require 'rails_helper'

describe Reference do
  it {should validate_presence_of :name}
end
