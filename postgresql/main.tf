resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "_%@"
}

resource "postgresql_database" "db" {
  name  = var.db_name
  owner = postgresql_role.role.name
}

resource "postgresql_role" "role" {
  name     = var.role_name
  login    = true
  password = random_password.password.result
}

resource "postgresql_grant" "db_role_grant" {
  database    = postgresql_database.db.name
  role        = postgresql_role.role.name
  schema      = "public"
  object_type = "table"
  privileges = ["DELETE", "INSERT", "REFERENCES", "SELECT", "TRIGGER", "TRUNCATE", "UPDATE"]
}

resource "postgresql_schema" "public" {
  name     = "public"
  database = postgresql_database.db.name
}

resource "postgresql_grant" "schema_access" {
  database    = postgresql_database.db.name
  role        = postgresql_role.role.name
  schema      = postgresql_schema.public.name
  object_type = "schema"
  privileges  = ["USAGE", "CREATE"]
}

resource "postgresql_grant" "schema_create" {
  database    = postgresql_database.db.name
  role        = postgresql_role.role.name
  object_type = "database"
  privileges  = ["CREATE"]
}
