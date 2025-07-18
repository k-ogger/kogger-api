{{- define "kogger-api.name" -}}
{{- default "kogger-api" .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* Helm required labels */}}
{{- define "kogger-api.labels" -}}
heritage: {{ .Release.Service }}
release: {{ .Release.Name }}
chart: {{ .Chart.Name }}
app: "{{ template "kogger-api.name" . }}"
{{- end -}}

{{/* matchLabels */}}
{{- define "kogger-api.matchLabels" -}}
release: {{ .Release.Name }}
app: "{{ template "kogger-api.name" . }}"
{{- end -}}