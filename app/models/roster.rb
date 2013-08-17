class Roster
  include MongoMapper::Document

  key :name, String
  key :overall, Integer
  key :scheduling, Integer
  key :fun, Integer
  key :day, String
  key :night, String
  key :food, String
  key :contact1, String
  key :contact2, String
  key :contact3, String
  key :freq, Integer
  key :deadline, Time

end


