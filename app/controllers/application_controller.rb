class ApplicationController < ActionController::Base
    include DeviseWhiteList
    include SetSource
    include CurrentUserConcern
    include DefaultPageContent
    before_action :set_copyright

    def set_copyright
        @copyright = PortfolioSiteViewTool::Renderer.copyright("Zach Sebacher", "All Rights Reservered")
    end
end

module PortfolioSiteViewTool
    class Renderer
        def self.copyright name, msg
            "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
        end
    end
end