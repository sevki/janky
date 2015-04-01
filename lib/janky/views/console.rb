require 'terminal'
module Janky
  module Views
    class Console < Layout
      def repo_name
        @build.repo_name
      end

      def repo_path
        "#{root}/#{repo_name}"
      end

      def branch_name
        @build.branch_name
      end

      def branch_path
        "#{repo_path}/#{branch_name}"
      end

      def commit_url
        @build.commit_url
      end

      def commit_short_sha
        @build.short_sha1
      end

      def commit_message
        @build.commit_message
      end

      def output
        Terminal.render(@build.output)
      end

      def jenkins_url
        @build.url
      end
    end
  end
end
