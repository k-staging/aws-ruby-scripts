require "bundler/setup"
require "aws-sdk-core"

def s3_describe()
    s3 = Aws::S3::Client.new(profile: ARGV[0])
    s3_list = s3.list_buckets
    p s3_list.buckets.map(&:name)
end

s3_describe()
