require "active_record"
require "sinatra"

ActiveRecord::Base.establish_connection(
    adapter: :sqlite3,
    database: File.expand_path("../../db/test.sqlite3",__FILE__) # znaci u odnosu na ovaj __File__
#"../../db/#{}.sqlite3" ovako bismo stavili da menjamo sa environment variablom, za test, production...
)