[![Gem Version](https://badge.fury.io/rb/ruby-universe.svg)](http://badge.fury.io/rb/ruby-universe)

This gem is for Universe.com V2 API only.

# Get Started

gem install ruby-universe

For Rails project:

gem 'rubybrite', :require => 'universe'

## Quick examples

``@uapi = UniverseAPI.new("access_token")``

### For Event API call:
``@event = @uapi.listings(id: 123456)``

Get event details: ``@event.get`` 

Get event attendees: ``@event.attendees.get``

For a specific attendee: ``@event.attendees(id: 1234567).get``

Use options: ``@event.attendees(status: "attending").get``

Get event teams: ``@event.teams.get``

Get event team attendees: ``@event.teams(id: 123456).attendees.get``

### For User API call:

When using personal OAuth token:
``@user = @uapi.users(id: "me")``

When using a third party OAuth token:
``@user = @uapi.users(id: third_party_user_id)``

OAuth token needs to be updated before making an API call on behalf of a third party:
``UniverseAPI::Configuration.access_token="third-party-user-oauth-token"``

Get user details: ``@user.get``

Get user owned events attendees: ``@user.owned_event_attendees.get``

### For Order API call:

``@order = @uapi.orders(id: 123456)``
``@order.get``

This gem also provides ``.post`` and ``.put``

For more information about V2 API, please visit http://developers.universe.com/.

