module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = 'KTT | Build-out' 
    @seo_keywords = 'KTT Build-out'
  end

end