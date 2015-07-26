# JsonStructure

```ruby
user = JsonStructure.build do
  object({
    id: integer,
    username: string(max_length: 30),
    address: string | null,
    age: integer(min: 0),
    favorite_things: array(string),
  })
end

user === {
  'id' => 13,
  'username' => 'Foo Bar',
  'address' => nil,
  'age' => 10,
  'favorite_things' => ['music', 'succer'],
}  # => true

user === {
  'id' => '9e0d23a',
  'username' => nil,
  'address' => ''
  'age': -1,
}  # => false
```

```ruby
products_array = JsonStructure.build do
  array(
    object({
      id: integer,
      name: string,
      price: integer(min: 0),
      maker: object({
        id: integer,
        name: string,
      }) | null,
    })
  )
end

products_array === [
  { 'id' => 22,
    'name' => 'pencil',
    'price' => 98,
    'maker' => {
      'id' => 32,
      'name' => 'Maker A',
    },
  },
  {
    'id' => 43,
    'name' => 'rular',
    'price' => 128,
  },
]  # => true
```
