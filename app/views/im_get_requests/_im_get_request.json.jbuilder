json.extract! im_get_request, :id, :username, :pwd, :prodID, :tokenID, :created_at, :updated_at
json.url im_get_request_url(im_get_request, format: :json)
