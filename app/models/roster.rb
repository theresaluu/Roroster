class Roster
  include MongoMapper::Document

  key :overall, String
  key :scheduling, String
  key :fun, String
  key :day, String
  key :night, String
  key :food, String
  key :contact1, String
  key :contact2, String
  key :contact3, String
  key :freq, String

end
