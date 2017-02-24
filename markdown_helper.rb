gem 'redcarpet'

module MarkdownHelper
  def markdonw(text)
    unless @markdown
      render = Redcarpet::Render::HTML.new(hard_wrap: true,filter_html: true)
      @markdown  = Redcarpet::Markdown.new(render,tables: true)
    end

    @markdown.render(text).html_safe

  end
end
