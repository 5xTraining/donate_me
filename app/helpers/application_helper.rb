module ApplicationHelper
  def pretty_datetime(datetime)
    datetime && datetime.strftime('%Y.%m.%d %H:%M')
  end
end
