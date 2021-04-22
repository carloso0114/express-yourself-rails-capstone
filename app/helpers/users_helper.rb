module UsersHelper
    before_action :logged_in_user, only: [:show]
end
