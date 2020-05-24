# Static site
A useful module for provisioning an S3 bucket for a static site. It also creates a Route53 record, CloudFront 
distribution, and SSL certificate. Note that when the SSL certificate is provisioned, it is an out-of-band
process and needs to be verified manually using an admin email account associated with your domain.


## Example usage

```hcl-terraform
module "my-static-site" {
  source = "github.com/ryandens/terraform-aws-personal-modules//modules/static-site?ref=v0.0.1"
  dns_name = "example.com"
}

output "name_servers" {
    description = "the Route 53 Zone for configuring your domain name provider"
    value = module.my-static-site.name_servers
}
```


