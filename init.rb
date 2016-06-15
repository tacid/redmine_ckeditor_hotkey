Redmine::Plugin.register :redmine_ckeditor_hotkey do
  name 'Redmine CKEditor hotkey'
  author 'Tacid'
  description 'This plugin adds some hotkeys for CKEditor'
  url 'https://github.com/tacid/redmine_ckeditor_hotkey'
  version '1.0.0'
  author_url 'https://github.com/tacid'
end

module RedmineCkeditorHotkey
  module Hooks
    class ViewsLayoutsHook < Redmine::Hook::ViewListener
      render_on :view_issues_show_description_bottom, partial: "ckeditor_hotkeys"
    end
  end
end
