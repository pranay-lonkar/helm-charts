{{/* Tolerations template for sample-node-app. */}}
{{- define "node.tolerations" -}}
    {{- range .Values.tolerations }}
      - key: {{ .key | quote }}
        value: {{ .value | quote }}
        operator: {{ .operator | quote }}
        effect: {{ .effect | quote }}
        tolerationSeconds: {{ .tolerationSeconds }}
    {{- end }}
{{- end -}}
