module Prismic
  module Fragments
    class Embed
      attr_accessor :embed_type, :provider, :url, :html, :o_embed_json

      def initialize(embed_type, provider, url, html, o_embed_json)
        @embed_type   = embed_type
        @provider     = provider
        @url          = url
        @html         = html
        @o_embed_json = o_embed_json
      end

      def as_html(link_resolver=nil)
        <<-HTML
        <div data-oembed="#@url"
            data-oembed-type="#{@embed_type.downcase}"
            data-oembed-provider="#{@provider.downcase}">#@html</div>
        HTML
      end
    end
  end
end
