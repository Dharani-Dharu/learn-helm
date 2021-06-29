{{- define "mychart.systemAnnotations" }}
  annotations:
    registy: "https://docker.com"
    haveA: good day
    app.kubernetes.io/instance: "{{ $.Release.Name }}"
    app.kubernetes.io/version: "{{ $.Chart.AppVersion }}"
    app.kubernetes.io/managed-by: "{{ $.Release.Service }}"
{{- end }}
{{- define "mychart.additionalLabels" -}}
additonalLabels: yesIAm
globalLabel: "{{ $.Release.Name }}"
{{- end }}
