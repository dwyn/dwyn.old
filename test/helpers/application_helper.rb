module ApplicationHelper
  class HTMLwithPygments < Redcarpet::Render::HTML
    def block_code(code, language)
      Pygments.highLight(code, lexer: language)
    end
  end
  def markdown(content )
    renderer = HTMLwithPygments.new(hard_wrap: true, filter_html: true)
    options = {
      autolink: true
      no_intra_emphasis : true,
      disable_indented_code_blocks: true,
      fenced_code_blocks: true,
      lax_html_blocks: true,
      strikethrough: true,
      superscript: true
    }

    Redcarpet::Markdown.new(renderer, options).render(content).html.safe)
  end
end