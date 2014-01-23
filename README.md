Description
===========
ruby-sysaid is a Ruby-based wrapper for the SysAid SOAP API. It abstracts
the nonsense that is dealing with SOAP in Ruby and provides a clean interface
for dealing with SysAid API objects.

Usage
=====
    
    require 'sysaid'
    
    SysAid::login "account", "username", "password", "wsdl_uri"
    
    # Find a ticket by ID and change its title
    
    ticket = SysAid::Ticket.find_by_id(123456)
    if ticket
      puts "Ticket found. Title is: #{ticket.title}"
      
      ticket.title = "My title has changed."
      
      if ticket.save
        puts "Ticket saved successfully."
      else
        puts "Could not save ticket."
      end
    else
      puts "Could not find ticket."
    end
    
    
    
    # Create user 'deleteme' if he doesn't exist, delete him if he does
    
    user = SysAid::User.find_by_username('deleteme')
    unless user
      puts "Could not find user 'deleteme'. Creating..."
      
      user = SysAid::User.new('deleteme')
      if user.save
        puts "User saved successfully"
      else
        puts "Could not save user"
      end
    else
      puts "User 'deleteme' found. Deleting."
      
      user.delete
    end
    
    # You could also have changed the user's name, e.g.
    # user.first_name = "Don't Delete"
    # user.save


    # Find IDs of projects whose status = 2 (2 = Active)
    projects = SysAid::Project.find_by_query("status=2")
    
    if projects
      puts "== These projects are ACTIVE =="
      projects.each do |proj_id|
        project = SysAid::Project.find_by_id(proj_id)

        puts project.title
      end
    end


    # Find IDs of tasks whose project_id = 25
    tasks = SysAid::Task.find_by_project_id(25)

    if tasks
      puts "== These tasks are in project 25 =="
      tasks.each do |task_id|
        task = SysAid::Tasks.find_by_id(task_id)

        puts task.title
      end
    end


    # Find all activities related to ticket ID 12345
    activity_ids = SysAid::Activity.find_by_ticket_id("12345")
    
    if activity_ids
      activity_ids.each do |activity_id|
        activity = SysAid::Activity.find_by_id(activity_id)
        puts activity.description
      end
    end
    

Installation
============
(Tested with Ruby 1.9.3, 2.0.x, 2.1.x)

Simply type:

    gem install sysaid

If you're using Bundler add:

    gem 'sysaid'

to your Gemfile.

If you'd like to build the gem from source:

    gem build ./sysaid.gemspec
    gem install ./sysaid-*.gem

(You may have to specify the specific version above, i.e. sysaid-0.1.0.gem.)

Additional
==========
Please file any bugs at https://github.com/cthielen/ruby-sysaid/issues.

Written by Christopher Thielen for the University of California Davis.

Available under the MIT license.

Version 0.3.0
Last updated: Thursday, January 23, 2014
