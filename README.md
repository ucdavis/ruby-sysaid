Description
===========
ruby-sysaid is a Ruby-based wrapper for the SysAid SOAP API. It abstracts
the nonsense that is dealing with SOAP on Ruby and provides a clean interface
for dealing with SysAid objects.

Usage
=====
    # Required
    SysAid.server_settings = {
      :wsdl => "https://sysaid.server.com/services/SysaidApiService?wsdl",
      :account => "account",
      :username => "username",
      :password => "password"
    }
    
    # find_by_* any field valid for SysAid
    ticket = service.find_by_id(45)
    ticket = service.find_by_responsibility("somebody")
    ticket = service.find_by_status(3)
    
    # Example of modifying a ticket
    ticket.title = "Updated"
    ticket.save
    
    # Deleting a ticket
    ticket.delete
    
    # Creating a new ticket
    ticket = SysAid::Ticket.new
    ticket.title = "New ticket"
    ticket.assignedTo = "somebody"
    ticket.save
    puts ticket.id   # the ID of the new ticket

Installation
============
(Tested with Ruby 2.0.x)

    gem build ./sysaid.gemspec
    gem install ./sysaid-*.gem

(You may have to specify the specific version above, i.e. sysaid-0.1.0.gem.)

Then, to use it in your scripts, merely:

    require 'sysaid'
    
    # Update attribute on existing user
    user = SysAid::User.find_by_username('cthielen')
    user.display_name = "Christopher Thielen"
    user.save
    
    # Create new user
    user = SysAid::User.new
    user.username = "cthielen"
    user.save
    
    # Delete existing user
    user = SysAid::User.find_by_username('cthielen')
    user.delete

Rails Integration
=================
If you'd like to use this gem with Rails, here is one way to do it:

1. Create config/sysaid.yml with the following contents:

          sysaid:
            wsdl: https://sysaid-server/services/SysaidApiService?wsdl
            account: account
            username: username
            password: password

2. Create config/initializers/sysaid.rb with the following contents:

        begin
          sysaid_settings = YAML.load_file("#{Rails.root.to_s}/config/sysaid.yml")['sysaid']
  
          SysAid.server_settings = {
            :wsdl => sysaid_settings['wsdl'],
            :account => sysaid_settings['account'],
            :username => sysaid_settings['username'],
            :password => sysaid_settings['password']
          }
  
          SYSAID_SUPPORT = true
  
          # Place any needed constants here, like the SysAid status table.
          SYSAID_STATUS_NEW = 1
          SYSAID_STATUS_CLOSED = 3
        rescue Errno::ENOENT => e
          Rails.logger.warn "config/sysaid.yml is missing. Disabling SysAid support."
          SYSAID_SUPPORT = false
        end

3. Then, anywhere in your Rails application, you can use the gem:

        ticket = SysAid.find_by_id(params[:id])

Additional
==========
Please file any bugs at https://github.com/cthielen/ruby-sysaid/issues.

Written by Christopher Thielen for the University of California Davis.

Available under the MIT license.

Version 0.2.0
Last updated: Thursday, August 22, 2013
