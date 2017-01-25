require "bundler/setup"
require "aws-sdk-core"

s3 = Aws::S3::Client.new(profile:'dummy_profile')

s3_list = s3.list_buckets
puts s3_list.buckets.map(&:name)
