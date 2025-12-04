{{- define "keycloak.name" -}}
{{ .Chart.Name }}
{{- end }}

{{- define "keycloak.fullname" -}}
{{ printf "%s-%s" .Release.Name (include "keycloak.name" .) | trunc 63 | trimSuffix "-" }}
{{- end }}
