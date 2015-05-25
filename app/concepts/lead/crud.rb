class Lead < ActiveRecord::Base
  class Create < Trailblazer::Operation
    include CRUD
    model Lead, :create

    contract do
      property :name
      property :phone_number

      validates :name, presence: true
      validates :phone_number, length: { in: 8..16 }, allow_blank: true
    end

    def process(params)
      validate(params[:lead]) do |f|
        f.save
      end
    end
  end

  class Update < Create
    action :update
  end
end
