module BookForm
  module Types
    include Dry::Types.module
  end

  class CreateForm < ApplicationForm
    attribute :title , Types::Strict::String
    attribute :isbn  , Types::Strict::String
  
    def self.build(params:)
      errors = BookFormSchema.call(title: params[:title], isbn: params[:isbn]).messages
      raise(MajorError::BadRequest, errors) if errors.present?
    end

    private
    
    BookFormSchema = Dry::Validation.Form do
      required(:title).filled
      required(:isbn).filled(min_size?: 17)
    end
  end
end
