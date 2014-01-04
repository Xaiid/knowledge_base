class PagesController < ApplicationController
  def index
    if user_signed_in?
      @documents = Document.all
      @tags      = Document.tags
      @popular_tags = Document.popular_tags
    else
      return render template: 'pages/landing_page', layout: 'welcome'
    end
  end
end
