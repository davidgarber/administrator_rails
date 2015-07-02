require 'rails_helper'

describe Project do

  it {should validate_presence_of :title}
  it {should validate_presence_of :detail}
  it {should validate_presence_of :url}


end
