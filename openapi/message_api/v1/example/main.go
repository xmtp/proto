package main

import (
	"net/http"

	v3 "github.com/swaggest/swgui/v3"
	messagev1openapi "github.com/xmtp/proto/v3/openapi/message_api/v1"
)

func main() {
	http.HandleFunc("/swagger.json", func(w http.ResponseWriter, r *http.Request) {
		w.Write(messagev1openapi.JSON)
	})
	http.Handle("/", v3.NewHandler("API", "/swagger.json", "/"))
	http.ListenAndServe(":8080", nil)
}
