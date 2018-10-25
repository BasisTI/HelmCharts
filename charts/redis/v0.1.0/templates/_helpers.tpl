{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "sisfogo2.name" -}}
  {{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "sisfogo2.cliente.fullname" -}}
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

{{- define "sisfogo2.gateway.fullname" -}}
  {{- if .Values.gateway.fullnameOverride -}}
    {{- .Values.gateway.fullnameOverride | trunc 63 | trimSuffix "-" -}}
  {{- else -}}
    {{- $name := default .Chart.Name .Values.nameOverride -}}
    {{- if contains $name .Release.Name -}}
      {{- printf "%s-%s" .Release.Name .Values.gateway.name | trunc 63 | trimSuffix "-" -}}
    {{- else -}}
      {{- printf "%s-%s-%s" .Release.Name $name .Values.gateway.name | trunc 63 | trimSuffix "-" -}}
    {{- end -}}
  {{- end -}}
{{- end -}}

{{- define "sisfogo2.capacitacao.fullname" -}}
  {{- if .Values.capacitacao.fullnameOverride -}}
    {{- .Values.capacitacao.fullnameOverride | trunc 63 | trimSuffix "-" -}}
  {{- else -}}
    {{- $name := default .Chart.Name .Values.nameOverride -}}
    {{- if contains $name .Release.Name -}}
      {{- printf "%s-%s" .Release.Name .Values.capacitacao.name | trunc 63 | trimSuffix "-" -}}
    {{- else -}}
      {{- printf "%s-%s-%s" .Release.Name $name .Values.capacitacao.name | trunc 63 | trimSuffix "-" -}}
    {{- end -}}
  {{- end -}}
{{- end -}}

{{- define "sisfogo2.contratacao.fullname" -}}
  {{- if .Values.contratacao.fullnameOverride -}}
    {{- .Values.contratacao.fullnameOverride | trunc 63 | trimSuffix "-" -}}
  {{- else -}}
    {{- $name := default .Chart.Name .Values.nameOverride -}}
    {{- if contains $name .Release.Name -}}
      {{- printf "%s-%s" .Release.Name .Values.contratacao.name | trunc 63 | trimSuffix "-" -}}
    {{- else -}}
      {{- printf "%s-%s-%s" .Release.Name $name .Values.contratacao.name | trunc 63 | trimSuffix "-" -}}
    {{- end -}}
  {{- end -}}
{{- end -}}

{{- define "sisfogo2.ocorrenciaincendios.fullname" -}}
  {{- if .Values.ocorrenciaincendios.fullnameOverride -}}
    {{- .Values.ocorrenciaincendios.fullnameOverride | trunc 63 | trimSuffix "-" -}}
  {{- else -}}
    {{- $name := default .Chart.Name .Values.nameOverride -}}
    {{- if contains $name .Release.Name -}}
      {{- printf "%s-%s" .Release.Name .Values.ocorrenciaincendios.name | trunc 63 | trimSuffix "-" -}}
    {{- else -}}
      {{- printf "%s-%s-%s" .Release.Name $name .Values.ocorrenciaincendios.name | trunc 63 | trimSuffix "-" -}}
    {{- end -}}
  {{- end -}}
{{- end -}}

{{- define "sisfogo2.configuracao.fullname" -}}
  {{- if .Values.configuracao.fullnameOverride -}}
    {{- .Values.configuracao.fullnameOverride | trunc 63 | trimSuffix "-" -}}
  {{- else -}}
    {{- $name := default .Chart.Name .Values.nameOverride -}}
    {{- if contains $name .Release.Name -}}
      {{- printf "%s-%s" .Release.Name .Values.configuracao.name | trunc 63 | trimSuffix "-" -}}
    {{- else -}}
      {{- printf "%s-%s-%s" .Release.Name $name .Values.configuracao.name | trunc 63 | trimSuffix "-" -}}
    {{- end -}}
  {{- end -}}
{{- end -}}

{{- define "sisfogo2.treinamento.fullname" -}}
  {{- if .Values.treinamento.fullnameOverride -}}
    {{- .Values.treinamento.fullnameOverride | trunc 63 | trimSuffix "-" -}}
  {{- else -}}
    {{- $name := default .Chart.Name .Values.nameOverride -}}
    {{- if contains $name .Release.Name -}}
      {{- printf "%s-%s" .Release.Name .Values.treinamento.name | trunc 63 | trimSuffix "-" -}}
    {{- else -}}
      {{- printf "%s-%s-%s" .Release.Name $name .Values.treinamento.name | trunc 63 | trimSuffix "-" -}}
    {{- end -}}
  {{- end -}}
{{- end -}}

