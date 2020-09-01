{{/* Tolerations template for sample-golang-app. */}}
{{- define "golang.tolerations" -}}
    {{- range .Values.tolerations }}
      - key: {{ .key | quote }}
        value: {{ .value | quote }}
        operator: {{ .operator | quote }}
        effect: {{ .effect | quote }}
        tolerationSeconds: {{ .tolerationSeconds }}
    {{- end }}
{{- end -}}
