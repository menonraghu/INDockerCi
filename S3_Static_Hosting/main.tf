provider "aws"{
    region = "ap-south-1"
    profile = "terraformprofile"
}

resource "aws_s3_bucket" "static_site"{
    bucket = var.bucket_name
    acl= "public-read"

    tags={

        Name = "S3StaticWebHosting"
    }

    website {

        index_document = "index.html"
        error_document = "error.html"
    }
}
