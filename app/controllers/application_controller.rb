class ApplicationController < ActionController::Base
    include Pundit
    protect_from_forgery prepend: true

    def after_sign_in_path_for(resource_or_scope)
        path = super(resource_or_scope)
        "#{config.full_host}#{path}"
    end
end