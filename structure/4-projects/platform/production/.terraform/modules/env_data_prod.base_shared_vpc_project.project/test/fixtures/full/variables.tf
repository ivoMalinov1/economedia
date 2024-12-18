/**
 * Copyright 2019 Google LLC
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

variable "org_id" {
  type        = string
  description = "Organization ID."
}

variable "folder_id" {
  type = string
}

variable "billing_account" {
  type        = string
  description = "Billing account ID."
}

variable "random_string_for_testing" {
  type        = string
  description = "A random string of characters to be appended to resource names to ensure uniqueness"
}

variable "domain" {
  type = string
}

variable "usage_bucket_name" {
  type = string
}

variable "usage_bucket_prefix" {
  type = string
}

variable "group_name" {
  type = string
}

variable "group_role" {
  default = "roles/viewer"
  type    = string
}

variable "sa_role" {
  default = "roles/editor"
  type    = string
}

variable "sa_group" {
  type = string
}

variable "region" {
  default = "us-east4"
  type    = string
}

variable "gsuite_admin_account" {
  type = string
}

variable "shared_vpc" {
  type = string
}
