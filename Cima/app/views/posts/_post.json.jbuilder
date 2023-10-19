json.extract! post, :id, :user_id, :tag, :topic, :content, :titolo, :fonte_esterna, :lingua, :editoriale, :created_at, :updated_at
json.url post_url(post, format: :json)
