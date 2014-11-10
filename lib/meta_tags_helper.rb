# coding: utf-8
require "meta_tags_helper/version"

module MetaTagsHelper
  def title(new_title = nil)
    content_for(:title, new_title) || new_title
  end

  def title_tag(base = nil)
    content_tag(:title, [ title, base ].reject(&:blank?).join(' — '))
  end

  def meta_tag(name, content = nil)
    if /:/ =~ name
      tag(:meta, property: name, content: content)
    else
      tag(:meta, name: name, content: content)
    end
  end

  def meta_tags(tags, namespace = nil)
    ns_prefix = namespace.present? ? "#{namespace}:" : ''

    tags = tags.map do |name, content|
      if content.kind_of?(Hash)
        meta_tags(content, name)
      else
        meta_tag(ns_prefix + name.to_s, content)
      end
    end

    safe_join(tags)
  end
end
