# Setup

```bash
bundle install
bin/rake db:create
bin/rake db:migrate
bin/rake db:seed
bin/rails s
```

# Sample calls

### Lookup a user
```javascript
query {
  user(id: 1) {
    first_name
    last_name
    email_address
    membership {
      number
      balance_due
      join_date
      coverage_type {
        name
        monthly_price
        tow_distance
      }
    }
    address {
      address
      city
      province
      postal_code
    }
  }
}
```

### Get all users
```javascript
query {
  users {
    id
    first_name
    last_name
    email_address
  }
}
```

### Lookup a membership by number
```javascript
query {
  membership(number: "456789") {
    number
    balance_due
    coverage_type {
      monthly_price
    }
    users {
      first_name
      last_name
    }
  }
}
```

### Get all memberships
```javascript
query {
  memberships {
    number
    balance_due
    coverage_type {
      monthly_price
    }
    users {
      first_name
      last_name
      address {
        address
        city
        postal_code
      }
    }
  }
}
```

### Update a user's email address
```javascript
mutation {
  updateUserEmail(input: {
    user_id: 1,
    email_address: "lisa@example.com"
  })
  {
    user { email_address }
  }
}
```
