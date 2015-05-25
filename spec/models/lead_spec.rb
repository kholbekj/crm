require 'rails_helper'

RSpec.describe Lead, type: :model do
  describe 'Create' do
    it 'persist valid' do
      lead = Lead::Create[lead: { name: 'Very Company', phone_number: '+49 123 456 78', progress: 50 }].model
      expect(lead).to be_persisted
    end

    it 'does not persists invalid' do
      _, op = Lead::Create.run(lead: { name: nil, phone_number: 'wat', progress: 50 })
      expect(op.model.persisted?).to be_falsey
    end
  end
end
