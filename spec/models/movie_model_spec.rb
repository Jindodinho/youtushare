require 'rails_helper'

RSpec.describe Movie, type: :model do
  it { is_expected.to have_timestamps }
  it { is_expected.to have_fields(:youtube_id) }
  it { is_expected.to validate_uniqueness_of(:youtube_id) }
  it { is_expected.to have_fields(:title) }
  it { is_expected.to have_field(:description) }
  it { is_expected.to belong_to(:user) }
end
