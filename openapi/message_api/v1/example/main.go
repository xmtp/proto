package main

import (
	"net/http"

	v3 "github.com/swaggest/swgui/v3"
	messagev1openapi "github.com/xmtp/proto/v3/openapi/message_api/v1"
)

func main() {
	http.HandleFunc("/swagger.json", func(w http.ResponseWriter, r *http.Request) {
		_, err := w.Write(messagev1openapi.JSON)
		if err != nil {
			panic(err)
		}
	})
	http.Handle("/", v3.NewHandler("API", "/swagger.json", "/"))
	err := http.ListenAndServe(":8080", nil)
	if err != nil {
		panic(err)
	}
}
