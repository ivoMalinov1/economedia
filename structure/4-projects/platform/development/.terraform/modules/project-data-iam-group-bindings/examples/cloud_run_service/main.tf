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

/******************************************
  Module cloud_run_service_iam_binding calling
 *****************************************/
module "cloud_run_service_iam_binding" {
  source             = "../../modules/cloud_run_services_iam/"
  project            = var.cloud_run_service_project
  location           = var.cloud_run_service_location
  cloud_run_services = [var.cloud_run_service_one, var.cloud_run_service_two]
  mode               = "authoritative"

  bindings = {
    "roles/role.admin" = [
      "serviceAccount:${var.sa_email}",
      "group:${var.group_email}",
      "user:${var.user_email}",
    ]
    "roles/role.invoker" = [
      "serviceAccount:${var.sa_email}",
      "group:${var.group_email}",
      "user:${var.user_email}",
    ]
  }
}

