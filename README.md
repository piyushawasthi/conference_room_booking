# Conference Room Booking

## Setup

```
git clone git@github.com:piyushawasthi/conference_room_booking.git
```


```
cd conference_room_booking
```

### Create & Migrate the DB
```
rake db:create
```

```
rake db:migrate
```

```
rake db:seed
```

### Run Application
```
rails s
```

### Requirements are summarized below -
```
    Manager should be able to add one or more conference rooms.
    User should be able to book rooms for a particular conference room for a particular time-slot for a particular day
    User should not be able to book a room already booked by another user for a particular time-slot, but there should be a wait queue in-case of a cancellation.
    User should be able to mark certain days as holidays
    Rooms cannot be booked on a holiday or a weekend
    User should be able to see the room bookings and see the name of the person who booked the room and Time-slot for each booking
    A email should be sent for all the activities,
        eg: Registration Confirmation, Password Reset, Booking Confirmation, Booking Cancellation, Room Availability etc
    Manger should be able to add various facilities to a room and rooms should be searchable on the basis of these facilities
```

### User type -
```
	Super-Manager, Manager, Client, Guest.
```

### Requirements -
```
	Gem to use Use Devise, CanCanCan, Send-Grid, Haml, Sidekiq, Kaminari and Unicorn
	U.I. Bootstrap 3+ 
```

## Thanks

