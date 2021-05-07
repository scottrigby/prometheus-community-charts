{{- define "rbac.rules" }}
{{- if .Values.collectors.certificatesigningrequests }}
- apiGroups: ["certificates.k8s.io"]
  resources:
    - certificatesigningrequests
  verbs: ["list", "watch"]
{{- end }}
{{- if .Values.collectors.configmaps }}
- apiGroups: [""]
  resources:
    - configmaps
  verbs: ["list", "watch"]
{{- end }}
{{- if .Values.collectors.cronjobs }}
- apiGroups: ["batch"]
  resources:
    - cronjobs
  verbs: ["list", "watch"]
{{- end }}
{{- if .Values.collectors.daemonsets }}
- apiGroups: ["extensions", "apps"]
  resources:
    - daemonsets
  verbs: ["list", "watch"]
{{- end }}
{{- if .Values.collectors.deployments }}
- apiGroups: ["extensions", "apps"]
  resources:
    - deployments
  verbs: ["list", "watch"]
{{- end }}
{{- if .Values.collectors.endpoints }}
- apiGroups: [""]
  resources:
    - endpoints
  verbs: ["list", "watch"]
{{- end }}
{{- if .Values.collectors.horizontalpodautoscalers }}
- apiGroups: ["autoscaling"]
  resources:
    - horizontalpodautoscalers
  verbs: ["list", "watch"]
{{- end }}
{{- if .Values.collectors.ingresses }}
- apiGroups: ["extensions", "networking.k8s.io"]
  resources:
    - ingresses
  verbs: ["list", "watch"]
{{- end }}
{{- if .Values.collectors.jobs }}
- apiGroups: ["batch"]
  resources:
    - jobs
  verbs: ["list", "watch"]
{{- end }}
{{- if .Values.collectors.limitranges }}
- apiGroups: [""]
  resources:
    - limitranges
  verbs: ["list", "watch"]
{{- end }}
{{- if .Values.collectors.mutatingwebhookconfigurations }}
- apiGroups: ["admissionregistration.k8s.io"]
  resources:
    - mutatingwebhookconfigurations
  verbs: ["list", "watch"]
{{- end }}
{{- if .Values.collectors.namespaces }}
- apiGroups: [""]
  resources:
    - namespaces
  verbs: ["list", "watch"]
{{- end }}
{{- if .Values.collectors.networkpolicies }}
- apiGroups: ["networking.k8s.io"]
  resources:
    - networkpolicies
  verbs: ["list", "watch"]
{{- end }}
{{- if .Values.collectors.nodes }}
- apiGroups: [""]
  resources:
    - nodes
  verbs: ["list", "watch"]
{{- end }}
{{- if .Values.collectors.persistentvolumeclaims }}
- apiGroups: [""]
  resources:
    - persistentvolumeclaims
  verbs: ["list", "watch"]
{{- end }}
{{- if .Values.collectors.persistentvolumes }}
- apiGroups: [""]
  resources:
    - persistentvolumes
  verbs: ["list", "watch"]
{{- end }}
{{- if .Values.collectors.poddisruptionbudgets }}
- apiGroups: ["policy"]
  resources:
    - poddisruptionbudgets
  verbs: ["list", "watch"]
{{- end }}
{{- if .Values.collectors.pods }}
- apiGroups: [""]
  resources:
    - pods
  verbs: ["list", "watch"]
{{- end }}
{{- if .Values.collectors.replicasets }}
- apiGroups: ["extensions", "apps"]
  resources:
    - replicasets
  verbs: ["list", "watch"]
{{- end }}
{{- if .Values.collectors.replicationcontrollers }}
- apiGroups: [""]
  resources:
    - replicationcontrollers
  verbs: ["list", "watch"]
{{- end }}
{{- if .Values.collectors.resourcequotas }}
- apiGroups: [""]
  resources:
    - resourcequotas
  verbs: ["list", "watch"]
{{- end }}
{{- if .Values.collectors.secrets }}
- apiGroups: [""]
  resources:
    - secrets
  verbs: ["list", "watch"]
{{- end }}
{{- if .Values.collectors.services }}
- apiGroups: [""]
  resources:
    - services
  verbs: ["list", "watch"]
{{- end }}
{{- if .Values.collectors.statefulsets }}
- apiGroups: ["apps"]
  resources:
    - statefulsets
  verbs: ["list", "watch"]
{{- end }}
{{- if .Values.collectors.storageclasses }}
- apiGroups: ["storage.k8s.io"]
  resources:
    - storageclasses
  verbs: ["list", "watch"]
{{- end }}
{{- if .Values.collectors.validatingwebhookconfigurations }}
- apiGroups: ["admissionregistration.k8s.io"]
  resources:
    - validatingwebhookconfigurations
  verbs: ["list", "watch"]
{{- end }}
{{- if .Values.collectors.volumeattachments }}
- apiGroups: ["storage.k8s.io"]
  resources:
    - volumeattachments
  verbs: ["list", "watch"]
{{- end }}
{{- if .Values.collectors.verticalpodautoscalers }}
- apiGroups: ["autoscaling.k8s.io"]
  resources:
    - verticalpodautoscalers
  verbs: ["list", "watch"]
{{- end }}
{{- end }}
