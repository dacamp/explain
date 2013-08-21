JSplain
=======

Ruby-ism to explain a complex JSON structure without diving in too deeply.
Simply call it against any object and it will dive through it.


Installation
----------------

    gem install jsplain

Usage
--------
### CLI

    $ jsplain path/to/file
    $ jsplain http://blogname.blogspot.com/feeds/posts/default?alt=json
    $ jsplain -h
         jsplain [path | url]

### Code

Nearly any Object can be explained.

* Arrays will be explained only as deeply as one element deep.
* Hashes will explain their key value pairs until value is no longer an Array or Hash.

```ruby
require 'jsplain'
object.explain
```

Example
------------

```json
{
  "Array":{
    "Hash":{
      "listener_descriptions":{
        "Array":{
          "Hash":{
            "policy_names":{
              "Array":"NilClass"
            },
            "listener":{
              "Hash":{
                "protocol":"String",
                "load_balancer_port":"Fixnum",
                "instance_protocol":"String",
                "instance_port":"Fixnum"
              }
            }
          }
        }
      },
      "backend_server_descriptions":{
        "Array":"NilClass"
      },
      "availability_zones":{
        "Array":"String"
      },
      "subnets":{
        "Array":"NilClass"
      },
      "instances":{
        "Array":{
          "Hash":{
            "instance_id":"String"
          }
        }
      },
      "security_groups":{
        "Array":"NilClass"
      },
      "created_time":"Time",
      "load_balancer_name":"String",
      "health_check":{
        "Hash":{
          "interval":"Fixnum",
          "target":"String",
          "healthy_threshold":"Fixnum",
          "timeout":"Fixnum",
          "unhealthy_threshold":"Fixnum"
        }
      },
      "policies":{
        "Hash":{
          "app_cookie_stickiness_policies":{
            "Array":"NilClass"
          },
          "lb_cookie_stickiness_policies":{
            "Array":"NilClass"
          },
          "other_policies":{
            "Array":"NilClass"
          }
        }
      },
      "canonical_hosted_zone_name":"String",
      "canonical_hosted_zone_name_id":"String",
      "scheme":"String",
      "source_security_group":{
        "Hash":{
          "owner_alias":"String",
          "group_name":"String"
        }
      },
      "dns_name":"String",
      "instance_states":{
        "Array":{
          "Hash":{
            "description":"String",
            "instance_id":"String",
            "state":"String",
            "reason_code":"String"
          }
        }
      },
      "Dimensions":{
        "Array":{
          "Hash":{
            "name":"String",
            "value":"String"
          }
        }
      },
      "Stats":{
        "Hash":{
          "Metric":"String",
          "Datapoints":{
            "Array":{
              "Hash":{
                "timestamp":"Time",
                "unit":"String",
                "average":"Float"
              }
            }
          }
        }
      }
    }
  }}
```