every 1.day, :at => '4:30 am' do
  rake "todo:delete_items"
end