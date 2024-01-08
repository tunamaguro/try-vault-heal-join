data "kubernetes_secret" "argocd_initial_admin_password" {
  metadata {
    namespace = "argocd"
    name      = "argocd-initial-admin-secret"
  }
}

output "argocd_initial_admin_password" {
    sensitive = true
    value = data.kubernetes_secret.argocd_initial_admin_password.data.password
}
