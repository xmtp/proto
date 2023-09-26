package v1

import (
	_ "embed"
)

//go:embed message_api.swagger.json
var JSON []byte
