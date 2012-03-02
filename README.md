## Install

```
$ gem install usercycle
```

## Usage

### Setup

``` ruby
require 'usercycle'

# put your own credentials here
api_key = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxx'

# set up a client to talk to the USERCycle API
@client = Usercycle::Client.new api_key
```

###  List events by identity

```ruby
identity = 'john.smith@example.com' #required
@client.event.find_by_identity(identity)
```

### Creating an event

```ruby
@params = {
  :identity => 'john.smith@example.com',
  :action_name => 'signed_up',
  :occurred_at => '2012-03-01 19:45:54 UTC', #optional
  :properties => { :first_name => 'John', :last_name => 'Smith' } #optional
}
@client.event.create(@params)
```

## Full Documentation

For full API documentation visit the official USERCycle docs at http://docs.usercycle.com/rest_api