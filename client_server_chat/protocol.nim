import json

type
  Message* = object
    username*: string
    message*: string

proc parse_message* (data: string): Message =
  let dataJson = parse_json(data)
  result.message = dataJson["message"].getStr()
  result.username = dataJson["username"].getStr()


proc create_message* (username, message: string): string =
  let sas = %{
    "username": %username,
    "message": %message
  }
  result = $sas & "\c\l"




when isMainModule: 
  block:
    let data = """{"username": "gavr", "message": "sas"}"""
    let parsed = parse_message data
    doAssert parsed.username == "gavr"
    doAssert parsed.message == "sas"
    echo "All test passed"
  block:
    try:
      let data = """foobar"""
      discard parse_message data
    except JsonParsingError:
      echo "Negative test passed"
    except:
      doAssert false
  block:
    let expected = """{"username":"gavr","message":"sas"}""" & "\c\l"
    doAssert expected == create_message("gavr", "sas")
    echo "create_message test passed"
   

    
  

    