require 'rails_helper'

RSpec.describe User, type: :model do
  # Association test
  # Validation tests
  # ensure email and password_digest are present before save
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
end
