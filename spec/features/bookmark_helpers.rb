def remove_item
  last = Link.last(url: 'https://github.com')
  last.destroy
end
