class ExternalClient
  def query
    Query.new
  end
end

class Query
  def prepare
    # 何らかの準備をする
    self
  end

  def execute
    # 実際のクエリを実行する
    "Query result"
  end
end
