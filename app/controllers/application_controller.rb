class ApplicationController < ActionController::Base
    protected
    def after_sign_in_path_for(resource)
        teacher_index_path 
    end
end
