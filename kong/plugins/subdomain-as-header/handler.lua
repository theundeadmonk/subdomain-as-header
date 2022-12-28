-- If you're not sure your plugin is executing, uncomment the line below and restart Kong
-- then it will throw an error which indicates the plugin is being loaded at least.

--assert(ngx.get_phase() == "timer", "The world is coming to an end!")
local plugin = {
  PRIORITY = 909, -- Must execute before the rate limiting plugin
  VERSION = "0.1.0",
}

-- runs in the 'access_by_lua_block'
function plugin:access(plugin_conf)
  local host = kong.request.get_host()
  local subdomain = host:match("([^.]+).")

  kong.service.request.set_header('X-Subdomain', subdomain)
end
  
return plugin
