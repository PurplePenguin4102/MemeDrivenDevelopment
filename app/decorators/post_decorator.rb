class PostDecorator < Draper::Decorator
    delegate_all
    
    def rendered_content()
        markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML.new(), extensions = {})
        markdown.render(content).html_safe
    end
end