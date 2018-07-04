require 'aliyun/oss_dup/version'
require 'aliyun/oss_dup/struct'
require 'aliyun/oss_dup/error'

module Aliyun
  module OssDup
    autoload :Utils,            'aliyun/oss_dup/utils'
    autoload :Client,           'aliyun/oss_dup/client'
    autoload :Authorization,    'aliyun/oss_dup/authorization'
  end
end
