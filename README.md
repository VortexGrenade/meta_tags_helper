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

You could use meta tags of erb code in your layout.
```html
  <%= meta_tags({
    url: 'https://github.com',
    site_name: 'GitHub',
    image: 'https://assets-cdn.github.com/images/modules/open_graph/github-logo.png',
    title: 'Build software better, together'
    },'og') %>
  <%= meta_tag('og:description', 'GitHub is the best place to build software together. Over 4 million people use GitHub to share code.') %>
```
Also you can read and rewrite your title in your view.
```html
<head>
  <%= title("Title") %>
  <%= title_tag("Sitename")  %>
</head>
<body>
  <h1><%= title %></h1>
...
</body>
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
