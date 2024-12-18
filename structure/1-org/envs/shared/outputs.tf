/**
 * Copyright 2021 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

output "org_id" {
  value       = local.org_id
  description = "The organization id"
}

output "scc_notification_name" {
  value       = var.scc_notification_name
  description = "Name of SCC Notification"
}

output "parent_resource_id" {
  value       = local.parent_resource_id
  description = "The parent resource id"
}

output "parent_resource_type" {
  value       = local.parent_resource_type
  description = "The parent resource type"
}

output "common_folder_name" {
  value       = google_folder.common.name
  description = "The common folder name"
}

output "org_audit_logs_project_id" {
  value       = module.org_audit_logs.project_id
  description = "The org audit logs project ID"
}

output "org_billing_logs_project_id" {
  value       = module.org_billing_logs.project_id
  description = "The org billing logs project ID"
}

output "domains_to_allow" {
  value       = var.domains_to_allow
  description = "The list of domains to allow users from in IAM."
}

output "logs_export_bigquery_dataset_name" {
  value       = module.logs_export.bigquery_destination_name
  description = "The log bucket for destination of log exports. See https://cloud.google.com/logging/docs/routing/overview#buckets"
}

output "tags" {
  value       = local.tags_output
  description = "Tag Values to be applied on next steps"
}
