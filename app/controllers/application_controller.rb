class ApplicationController < ActionController::API
      
  rescue_from ActiveRecord::RecordNotFound, :with => :not_found

  private

  def not_found
    render :json => {'errors' => ['Record not found']}, :status => :not_found
  end

  def format_activerecord_errors(errors)
    result = []
    errors.each do |attribute, error|
      result << { attribute => error }
    end
    result
  end
end
