module ArticlesHelper
  def get_user_name_from_comment(comment)
    User.find_by_id(comment.user_id).user_name
  end
end
