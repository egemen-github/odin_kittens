# odin_kittens

This is a fast and straightforward project where I set up a Rails app to be a data-producing API… which is just a fancy way of saying that all controller methods will render data instead of HTML.

Intended to be responding API calls e.g.,

```
response = RestClient.get("http://localhost:3000/kittens/13", :accept => :json)
```

Printing the response and we recieve this: 
```
{"id":13,"name":"lion","age":"2.5","cuteness":"extreme","softness":"like a cloud","created_at":"2022-05-16T06:02:47.256Z","updated_at":"2022-05-16T06:02:47.256Z"}
```