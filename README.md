[![Unix build](https://img.shields.io/github/workflow/status/Kong/kong-plugin/Test?label=Test&logo=linux)](https://github.com/theundeadmonk/subdomain-as-header/actions/workflows/test.yml)
[![Luacheck](https://github.com/Kong/kong-plugin/workflows/Lint/badge.svg)](https://github.com/theundeadmonk/subdomain-as-header/actions/workflows/lint.yml)
[![luarocks](https://img.shields.io/badge/luarocks-kong--plugin--paseto-blue.svg)](https://luarocks.org/modules/theundeadmonk/kong-plugin-subdomain-as-header)

Kong plugin to set subdomain as a header.

## Plugin Description
This plugin is useful in multi-tenant setups where tenants are identified by subdomains eg. `<tenant>.bar.com`
It extracts the subdomain from the host and adds it as a header `X-Subdomain`

eg. For a request from host `foo.bar.com` a header `X-Subdomain: foo` will be added to the request

#### Kong Plugin
Install the plugin on each node in your Kong cluster via luarocks:
```
luarocks install kong-plugin-subdomain-as-header
```
Add to the custom_plugins list in your Kong configuration (on each Kong node):
```
custom_plugins = subdomain-as-header
```

## License

MIT License - see the [LICENSE](LICENSE) file for details