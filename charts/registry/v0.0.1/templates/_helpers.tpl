{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "registry.name" -}}
  {{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "registry.jhipster.fullname" -}}
  {{- if .Values.jhipster.fullnameOverride -}}
    {{- .Values.jhipster.fullnameOverride | trunc 63 | trimSuffix "-" -}}
  {{- else -}}
    {{- $name := default .Chart.Name .Values.nameOverride -}}
    {{- if contains $name .Release.Name -}}
      {{- printf "%s-%s" .Release.Name .Values.jhipster.name | trunc 63 | trimSuffix "-" -}}
    {{- else -}}
      {{- printf "%s-%s-%s" .Release.Name $name .Values.jhipster.name | trunc 63 | trimSuffix "-" -}}
    {{- end -}}
  {{- end -}}
{{- end -}}





