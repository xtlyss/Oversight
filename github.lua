local http = game:GetService("HttpService")

local GitHub = {}
GitHub.__index = GitHub

function GitHub:Base64Decode(s)
	return syn.crypt.base64.decode(s)
end

function GitHub:GetRaw(dir,rawResponse)
	local resp = syn.request({
		Url = "https://api.github.com/repos/"..self.Repository.."/contents/"..dir,
		Headers = {Authorization = "Bearer "..self.Token}
	})
	if rawResponse then
		return resp
	else
		return self:Base64Decode(http:JSONDecode(resp.Body).content)
	end
end

function GitHub.new(repo,token)
	local self = setmetatable({},GitHub)

	self.Repository = repo
	self.Token = token

 	return self
end

return GitHub