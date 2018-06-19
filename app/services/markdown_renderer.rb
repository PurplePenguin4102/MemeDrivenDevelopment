# kept as an example, see decorator class for functional code
class MarkdownRenderer
    def initialize(input)
        @input = input
        @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML.new(), extensions = {})
    end
    def render()
        @markdown.render(@input).html_safe
    end
end