# Creating Giant Swarm clusters with Terraform

## Prerequisites

### Restapi provider

Get the [restapi](https://github.com/Mastercard/terraform-provider-restapi) provider:

```bash
RESTAPI_VERSION="1.12.0"
wget https://github.com/Mastercard/terraform-provider-restapi/releases/download/v${RESTAPI_VERSION}/terraform-provider-restapi_v${RESTAPI_VERSION}-linux-amd64
mkdir -p ~/.terraform.d/plugins/
chmod +x terraform-provider-restapi_v${RESTAPI_VERSION}-linux-amd64
mv terraform-provider-restapi_v${RESTAPI_VERSION}-linux-amd64 ~/.terraform.d/plugins/terraform-provider-restapi_v${RESTAPI_VERSION}
```

### Authentication

Create a file containing your Giant Swarm user credentials:

```json
{
"email": "me@mycorp.com",
"password_base64": "AfSeZ1Xds3jzF5xQMQ=="
}
```

Use this to obtain an auth token:

```bash
INSTALLATION_URI="https://api.something.com"
curl -X POST -d @credentials.json https://${INSTALLATION_URI}/v4/auth-tokens/
```

This token must then be provided to Terraform (as the `auth_token` variable).
