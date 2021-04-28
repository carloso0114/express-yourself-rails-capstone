require 'rails_helper'

RSpec.describe Opinion, type: :model do
  it { should belong_to(:user) }
end
