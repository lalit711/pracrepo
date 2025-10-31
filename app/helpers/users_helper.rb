module UsersHelper
     def joined_datetwo(user)
        user.created_at.strftime("%B %d, %Y")
    end
end
