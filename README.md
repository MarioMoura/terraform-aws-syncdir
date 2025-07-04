# Terraform SyncDir

This module syncs a local directory to a S3 Bucket. Its intended use is to
host static websites. It will set a cache and the correct filetype based
on the NGINX `mime.types` list.

Full example:
```
module "sync-dir" {
  source  = "MarioMoura/syncdir/aws"
  version = "~> 0.0"
  directory             = <local_dir_path>
  bucket                = <bucket_name>
  cache_control_default = "max-age=3600"
  cache_control_by_extension = {
    html = "max-age=7200"
  }
}
```
