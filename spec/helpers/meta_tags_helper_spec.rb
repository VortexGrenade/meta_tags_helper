# coding: utf-8
require 'spec_helper'
require 'meta_tags_helper'

describe MetaTagsHelper, type: [:helper] do
  describe '#title' do
    it 'sets and returns page title' do
      title = helper.title('Foo bar')

      expect(title).to eq('Foo bar')
      expect(helper.title).to eq('Foo bar')
    end
  end

  describe '#title_tag' do
    it 'builds "title" tag with base suffix' do
      helper.title('Foo bar')

      expect(helper.title_tag('Baz')).to eq('<title>Foo bar — Baz</title>')
    end
  end

  describe '#meta_tag' do
    it 'builds meta tag' do
      meta = helper.meta_tag('name', 'content')
      meta_html = '<meta content="content" name="name" />'

      expect(meta).to eq(meta_html)
    end

    it 'uses "property" attribute for namespaced names' do
      meta = helper.meta_tag('ns:name', 'content')
      meta_html = '<meta content="content" property="ns:name" />'

      expect(meta).to eq(meta_html)
    end
  end

  describe '#meta_tags' do
    it 'builds list of meta tags' do
      meta = meta_tags(description: 'Foo bar baz', keywords: %[foo bar baz])
      meta_html = '<meta content="Foo bar baz" name="description" />' +
                  '<meta content="foo bar baz" name="keywords" />'

      expect(meta).to eq(meta_html)
    end

    it 'allows to specify properties namespace' do
      og = meta_tags(og: { description: 'Foo bar baz', image: 'image.jpg' })
      og_html = '<meta content="Foo bar baz" property="og:description" />' +
                '<meta content="image.jpg" property="og:image" />'

      expect(og).to eq(og_html)
    end
  end
end
