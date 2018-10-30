{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "redis.name" -}}
  {{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "redis.fullname" -}}
  {{- if .Values.cliente.fullnameOverride -}}
    {{- .Values.cliente.fullnameOverride | trunc 63 | trimSuffix "-" -}}
  {{- else -}}
    {{- $name := default .Chart.Name .Values.nameOverride -}}
    {{- if contains $name .Release.Name -}}
      {{- printf "%s-%s" .Release.Name .Values.cliente.name | trunc 63 | trimSuffix "-" -}}
    {{- else -}}
      {{- printf "%s-%s-%s" .Release.Name $name .Values.cliente.name | trunc 63 | trimSuffix "-" -}}
    {{- end -}}
  {{- end -}}
{{- end -}}

