Feature: DBName

  Background:
    * def DbUtils = Java.type('DbUtils')
    * def config = { username: 'xxxxxx', password: 'xxxxxx', url: 'jdbc:oracle:thin:@//hostname:port/servicename', driverClassName: 'oracle.jdbc.OracleDriver' }
    * def db = new DbUtils(config)

  @getScore
  Scenario: Get Score
    * def query = "SELECT - sql script"
    * def executeQuery = db.readRows(query)

  @insertScore
  Scenario: Insert Score
    * def query = "SELECT - sql script"
    * def executeQuery = db.readRows(query)
    * print executeQuery[0].TCKN
    * def random_string =
  """
  function() {
  var text = "";
  var possible = "123456789";
  for (var i = 0; i < 12; i++)
  text += possible.charAt(Math.floor(Math.random() * possible.length));
  return text;
  }
  """
    * def randomstring = random_string()
    * def query2 = "INSERT - sql script"
    * def executeQuery2 = db.insertRows(query2)
