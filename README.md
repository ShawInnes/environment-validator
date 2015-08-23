# environment-validator
Development Environment Validator

This uses the server-spec framework to perform environment validation of
development or test environments.  The initial version is set up in a very
basic way where you pass a single host IP or Name and it connects over WinRM.

I would like to enhance this to be more role based in the future so that rather
than specifying a number of hosts and specs, you can define roles and specs and
then assign roles to a list of hosts.

(Ideally these roles would match chef or octopus deploy roles too)

## Sample Command

```
TARGET_HOST="10.0.1.3" TARGET_USER="packer" TARGET_PASS="topsecret123" rake
```

## Sample Output
```
DevOps Tools
  Package "Chef Development Kit v0.6.2"
    should be installed

Developer Tools
  Package "Microsoft Visual Studio Enterprise 2015"
    should be installed
  Package "JetBrains ReSharper Ultimate in Visual Studio 2015"
    should be installed
  Package "JetBrains dotCover 3.1.2"
    should be installed
  Package "JetBrains dotMemory 4.3.2"
    should be installed
  Package "JetBrains dotPeek 1.4.2"
    should be installed
  Package "JetBrains dotTrace 6.1.2"
    should be installed
  Package "LINQPad 4"
    should be installed

Internet Information Server (IIS)
  IIS Application Pool "api.serenityone.com"
    should exist
    should have dotnet version "4.0"
  IIS Website "api.serenityone.com"
    should exist
    should be enabled
    should be running
    should be in app pool "api.serenityone.com"
  Port "80"
    should be listening
  File "c://inetpub//wwwroot"
    should be directory

NodeJs
  File "c:/program files/nodejs/node.exe"
    should be file
    should be version "0.12.4"
    md5sum
      should eq "e05e5562864f2c914259ff562fa51be4"

Developer Tools
  Package "Octopus Deploy Server"
    should be installed
  Package "Octopus Deploy Tentacle"
    should be installed

RabbitMQ Server
  Service "RabbitMQ"
    should be installed
    should be enabled
    should be running
    should have start mode "Automatic"
  Package "RabbitMQ"
    should be installed
  Port "5672"
    should be listening
  Port "15672"
    should be listening

Seq Server
  Package "Seq"
    should be installed
  Service "Seq"
    should be installed
    should be enabled
    should be running
    should have start mode "Automatic"
  Port "5341"
    should be listening

SQL Server 2014
  Service "SQL Server (MSSQLSERVER)"
    should be installed
    should be enabled
    should be running
    should have start mode "Automatic"
  Package "Microsoft SQL Server 2014 (64-bit)"
    should be installed
  Port "1433"
    should be listening

Local User Configuration
  User "shaw.innes"
    should exist
    should belong to group "Administrators"

Finished in 26.07 seconds (files took 1.23 seconds to load)
42 examples, 0 failures
```
