require 'test_helper'

class RemindMailerTest < ActionMailer::TestCase
  test "content" do
    mail = RemindMailer.content
    assert_equal "Content", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
