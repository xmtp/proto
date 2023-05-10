package main

import (
	_ "embed"
)

//go:embed message_api.swagger.json
var JSON string
