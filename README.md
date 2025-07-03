# Terraform SyncDir

This module syncs a local directory to a S3 Bucket. Its intended use is to
host static websites. It will set a cache and the correct filetype based
on the NGINX `mime.types` list.

Right now the only supported variables are `directory` and `bucket`.
