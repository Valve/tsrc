require 'json'
require 'pathname'
require 'tsrc/version'

module TypeScript
  module Src
    class << self
      # @return [Pathname]
      def typescript_path
        @typescript_path ||= ::Pathname.new(File.dirname(__FILE__)).join('tsrc/support/typescript')
      end

      # @return [Pathname]
      def tsc_path
        typescript_path.join('bin/tsc')
      end

      # @return [Pathname]
      def js_path
        bin_tsc = typescript_path.join('lib/tsc.js')
        if ::File.exist?(bin_tsc)
          bin_tsc
        else
          typescript_path.join('bin/tsc.js')
        end
      end

      # @return [Pathname]
      def package_json_path
        typescript_path.join('package.json')
      end

      # @return [Pathname]
      def license_path
        typescript_path.join('LICENSE.txt')
      end

      ### contents

      # @return [String]
      def js_content
        js_path.read
      end

      # @return [Hash]
      def package_info
        JSON.parse(package_json_path.read)
      end

      # @return [String]
      def version
        package_info['version']
      end
    end
  end
end

