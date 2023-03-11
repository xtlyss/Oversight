local req = syn.request

local Github = {
    Repository = "",
    Token = ""
}

function Github:GetRaw(dir)
    return req({
        Url = "https://api.github.com/repos/"..self.Repository.."/contents/"+dir,
        Headers = {Token = self.Token}
    })
end

return Github