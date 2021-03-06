module Prismic
  module Fragments
    class Date
      attr_accessor :value

      def initialize(value)
        @value = value
      end

      def as_html(link_resolver=nil)
        %(<time>#{value.iso8601(3)}</time>)
      end
    end
  end
end
