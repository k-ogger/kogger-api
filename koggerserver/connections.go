package koggerserver

import (
	"encoding/json"
	"net/http"

	models "github.com/k-ogger/kogger-api/models"
)

var (
	KoggerServiceHost string
	KoggerServicePort string
)

func writeStandardResponse(r *http.Request, w http.ResponseWriter, grpcToken string, message string) {
	responseObj := &models.Response{
		Token:   grpcToken,
		Message: message,
	}

	response, _ := json.Marshal(responseObj)
	w.Write(response)
}
