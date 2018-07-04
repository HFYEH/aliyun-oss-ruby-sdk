require 'aliyun/oss_dup/xml_generator'
# Function Based
require 'aliyun/oss_dup/api/buckets'
require 'aliyun/oss_dup/api/bucket_property'
require 'aliyun/oss_dup/api/bucket_objects'
require 'aliyun/oss_dup/api/bucket_multiparts'
# Object Based
require 'aliyun/oss_dup/client/clients'

require 'aliyun/oss_dup/http'

module Aliyun
  module OssDup
    class Client
      include Aliyun::OssDup::Api::Buckets
      include Aliyun::OssDup::Api::BucketProperty
      include Aliyun::OssDup::Api::BucketObjects
      include Aliyun::OssDup::Api::BucketMultiparts

      attr_reader :access_key, :secret_key, :bucket

      # Initialize a object
      #
      # @example
      #   Aliyun::Oss::Client.new("ACCESS_KEY", "SECRET_KEY", host: "oss-cn-beijing.aliyuncs.com", bucket: 'oss-sdk-beijing')
      #
      # @param access_key [String] access_key obtained from aliyun
      # @param secret_key [String] secret_key obtained from aliyun
      # @option options [String] :host host for bucket's data center
      # @option options [String] :bucket Bucket name
      #
      # @return [Response]
      def initialize(access_key, secret_key, options = {})
        @access_key = access_key
        @secret_key = secret_key
        @options = options
        @bucket = options[:bucket]

        @services = {}
      end

      private

      def http
        @http ||= Http.new(access_key, secret_key, @options[:host])
      end
    end
  end
end
