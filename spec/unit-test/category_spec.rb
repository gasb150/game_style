# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'assosiations' do
    it { should have_many(:articles_categories) }
    it { should have_many(:articles) }
  end

  describe 'Category attributes presence' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:priority) }
  end
end
