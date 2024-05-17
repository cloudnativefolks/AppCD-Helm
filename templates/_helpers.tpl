{{- define "my-app.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "my-app.chart" -}}
{{ .Chart.Name }}-{{ .Chart.Version }}
{{- end }}

{{- define "my-app.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{ .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end }}
