require 'redcarpet'

module ArticlesHelper
  def get_user_name_from_comment(comment)
    User.find_by_id(comment.user_id).user_name
  end

  def markdown(text)
    unless @markdown
      renderer = Redcarpet::Render::HTML.new
      @markdown = Redcarpet::Markdown.new(renderer, :tables => true)
    end

    @markdown.render(text).html_safe
  end
end
