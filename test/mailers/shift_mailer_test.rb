require 'test_helper'

class ShiftMailerTest < ActionMailer::TestCase
  test "confirm_mail" do
    mail = ShiftMailer.confirm_mail
    assert_equal "Confirm mail", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "deny_mail" do
    mail = ShiftMailer.deny_mail
    assert_equal "Deny mail", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
