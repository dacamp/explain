explain
=======

Ruby-ism to explain a complex structure without diving in too deep.

I use the returning method which I've included as well.

Simply call it against any object and it will dive through it.

I created it easily get the structure from a cached AWS client call.

With JSON.pretty_generate you'll get output similar to this.

```json
{
  "Array": {
    "Hash": {
      "ApproximateNumberOfMessages": "String",
      "ApproximateNumberOfMessagesNotVisible": "String",
      "MessageRetentionPeriod": "String",
      "LastModifiedTimestamp": "String",
      "CreatedTimestamp": "String",
      "VisibilityTimeout": "String",
      "QueueArn": "String",
      "QueueUrl": "String",
      "QueueName": "String"
    }
  }
}
```
