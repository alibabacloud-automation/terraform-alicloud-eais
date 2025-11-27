Terraform Module for creating Elastic Accelerator Instance on Alibaba Cloud.

terraform-alicloud-eais
=====================================================================

[English](https://github.com/terraform-alicloud-modules/terraform-alicloud-eais/blob/main/README.md) | 简体中文

本 Module 用于自动化创建和管理弹性加速计算实例，包含：`EAIS`。

本 Module 支持创建以下资源:

* [alicloud_eais_instance](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/eais_instance)

## 用法

<div style="display: block;margin-bottom: 40px;"><div class="oics-button" style="float: right;position: absolute;margin-bottom: 10px;">
  <a href="https://api.aliyun.com/terraform?source=Module&activeTab=document&sourcePath=terraform-alicloud-modules%3A%3Aeais&spm=docs.m.terraform-alicloud-modules.eais" target="_blank">
    <img alt="Open in AliCloud" src="https://img.alicdn.com/imgextra/i1/O1CN01hjjqXv1uYUlY56FyX_!!6000000006049-55-tps-254-36.svg" style="max-height: 44px; max-width: 100%;">
  </a>
</div></div>

```hcl
module "example" {
  source            = "terraform-alicloud-modules/eais/alicloud"
  create_instance   = true
  instance_type     = "eais.ei-a6.2xlarge"
  name              = "tf-eais"
  security_group_id = "sg-abc12345"
  vswitch_id        = "vsw-abc12345"
  force             = false
}
```

## 示例

* [EAIS 完整示例](https://github.com/terraform-alicloud-modules/terraform-alicloud-ecp/tree/main/examples/complete)

## 注意事项

* 本 Module 使用的 AccessKey 和 SecretKey 可以直接从 `profile` 和 `shared_credentials_file`
  中获取。如果未设置，可通过下载安装 [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) 后进行配置.

## 要求

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > = 0.13 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | > = 1.137.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | > = 1.137.0 |

## 提交问题

如果在使用该 Terraform Module
的过程中有任何问题，可以直接创建一个 [Provider Issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new)，我们将根据问题描述提供解决方案。

**注意:** 不建议在该 Module 仓库中直接提交 Issue。

## 作者

Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com).

## 许可

MIT Licensed. See LICENSE for full details.

## 参考

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)
