module Aliyun
  module OssDup
    module Struct
      class Base
        def initialize(attributes = {})
          attributes.each do |key, value|
            m = "#{Utils.underscore(key)}=".to_sym
            send(m, value) if self.respond_to?(m)
          end
        end
      end
    end
  end
end

require 'aliyun/oss_dup/struct/bucket'
require 'aliyun/oss_dup/struct/object'
require 'aliyun/oss_dup/struct/multipart'

require 'aliyun/oss_dup/struct/cors'
require 'aliyun/oss_dup/struct/lifecycle'
require 'aliyun/oss_dup/struct/referer'
require 'aliyun/oss_dup/struct/website'
require 'aliyun/oss_dup/struct/logging'

require 'aliyun/oss_dup/struct/part'
