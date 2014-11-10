# MetaTagsHelper

Rails helpers for building meta tags.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'meta_tags_helper'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install meta_tags_helper

## Usage

```html
<head>
  <%= meta_tags og: {
    url: 'https://github.com',
    site_name: 'GitHub',
    title: 'Build software better, together'
  } %>
</head>
```

Also you can manage title tag:
```html
<head>
  <%= title_tag 'Sitename' %>
</head>
```

View:
```html
<h1><%= title 'Title' %></h1>
```


## License

Copyright (c) 2014 Okhlopkov Anatoly

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
