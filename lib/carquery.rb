require "carquery/errors"
require "carquery/version"
require "carquery/request"
Dir[File.dirname(__FILE__) + "/carquery/dsl/*.rb"].each { |f| require f  }
Dir[File.dirname(__FILE__) + "/carquery/resources/*.rb"].each { |f| require f  }

# @TODO remove
require "pry"

module Carquery

  API_URL="http://www.carqueryapi.com/api/0.3"

end
