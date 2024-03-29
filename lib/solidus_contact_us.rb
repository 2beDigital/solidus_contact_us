require 'solidus_core'
require 'solidus_contact_us/engine'

module SolidusContactUs

  # Address ContactUs email notifications are sent from.
  mattr_accessor :mailer_from

  # Address to send ContactUs email notifications to.
  mattr_accessor :mailer_to

  # Addresses ContactUs email notifications are sent to.
  mattr_accessor :mailer_bcc

  # Enable or Disable name field.
  mattr_accessor :require_name

  # Enable or Disable subject field.
  mattr_accessor :require_subject

  # Default way to setup ContactUs. Run rake contact_us:install to create
  # a fresh initializer with all configuration values.
  def self.setup
    yield self
  end

end
