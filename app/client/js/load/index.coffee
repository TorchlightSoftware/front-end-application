require.config
  baseUrl: "."
  packages: [
    {name: "app", location: "js"}
    {name: "templates", location: "templates"}
    {name: "load", location: "js/load"}
    {name: "vendor", location: "js/vendor"}
    {name: "components", location: "components"}
  ]

  map: "*":
    {"flight/component": "js/vendor/flight/lib/component"}

require ['load/main']
