# frozen_string_literal: true

require_relative "../entity/abstract"
require_relative "../refinements"

module Sorta
  module Reaper
    module Render
      class Error < Reaper::Error
      end

      class Visitor
        using Refinements::Except

        module Errors
          class NotEntity < Render::Error
          end
        end

        def render(entity)
          raise Errors::NotEntity unless entity.is_a? Entity::Abstract

          entity.visit(self)
        end

        def visit_Project(obj)
          strings = []
          strings << "<REAPER_PROJECT #{obj.proj_ver} \"#{obj.daw_ver}\" #{obj.unnamed_1}"

          attrs = obj.attributes.except(:proj_ver, :daw_ver, :unnamed_1)
          strings << process_attributes(attrs)

          strings << ">"
          strings.join("\n")
        end

        def visit_Track(obj)
          strings = []
          strings << "<TRACK {#{obj.trackid}}"

          attrs = obj.attributes.dup.tap do |h|
            h[:trackid] = "{#{obj.trackid}}"
          end

          strings << process_attributes(attrs)

          strings << ">"
          strings.join("\n")
        end

        def visit_Item(obj)
          strings = []
          strings << "<ITEM "

          strings << process_attributes(obj.attributes)

          strings << ">"
          strings.join("\n")
        end

        def visit_Source(obj)
          strings = []
          strings << "<SOURCE #{obj.format.upcase}"

          attrs = obj.attributes.except(:format)
          strings << process_attributes(attrs)

          strings << ">"
          strings.join("\n")
        end

        def visit_Notes(obj)
          "<NOTES #{obj.unnamed_1} #{obj.unnamed_2}\n>"
        end

        def visit_RecordCfg(obj)
          "<RECORD_CFG \n#{obj.unnamed_1}\n> "
        end

        def visit_ApplyfxCfg(_obj)
          "<APPLYFX_CFG\n>"
        end

        private

        # Kill me [1]
        def process_attributes(attrs)
          strings = attrs.each_with_object([]) do |(key, value), acc|
            tmp =
              case value
              in Entity::Abstract
                value.visit(self)
              in [Entity::Abstract, *]
                value.map { |v| v.visit(self) }.join("\n")
              else
                "#{key.upcase} #{format_value(value)}"
              end

            acc << tmp
          end

          strings.join("\n")
        end

        # Kill me [2]
        def format_value(val)
          case val
          when Integer, Float
            val
          when String
            "\"#{val}\""
          when Array
            case val
            in [Entity::Abstract, *]
              value.map { |v| v.visit(self) }.join("\n")
            else
              val.join(" ")
            end
          end
        end
      end
    end
  end
end
