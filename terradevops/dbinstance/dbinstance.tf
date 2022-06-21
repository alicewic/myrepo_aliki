resource "aws_db_instance" "myrdsdb" {
    name = "alikidb"
    identifier = "myalikirds"
    instance_class = "db.t2.micro"
    engine = "mariadb"
    engine_version = "10.2.21"
    username = "aliki"
    password = "password321"
    port = 3306
    allocated_storage = 20
    skip_final_snapshot = true
}
