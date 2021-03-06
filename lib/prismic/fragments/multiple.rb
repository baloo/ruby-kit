module Prismic
  module Fragments
    class Multiple
      attr_reader :fragments

      def initialize(fragments=[])
        @fragments = fragments
      end

      def size
        @fragments.size
      end

      def [](i)
        @fragments[i]
      end

      def push(fragment)
        @fragments.push(fragment)
      end

      def as_html(link_resolver)
        @fragments.map { |f| f.as_html(link_resolver) }.join
      end

      alias :length :size
    end
  end
end
