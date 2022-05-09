module Sorta
  module Reaper
    module Refinements
      module Except
        refine Array do
          # File activesupport/lib/active_support/core_ext/hash/except.rb, line 20
          def except!(*keys)
            keys.each { |key| delete(key) }
            self
          end

          # File activesupport/lib/active_support/core_ext/hash/except.rb, line 12
          def except(*keys)
            dup.except!(*keys)
          end
        end
      end
    end
  end
end