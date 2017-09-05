# tf_modules

![Graph of Current Module Outputs](https://github.com/BenHigginbottom/tf_modules/blob/master/graph.png)

##Gotchas

Always make sure that the modules are up to date using the following command

```bash
terraform get --update
```
Terraform will cache any remote modules under the .terraform directory under your root configuration, if the module already exists here then it will not download the latest version

![Tree of .terraform](https://github.com/BenHigginbottom/tf_modules/blob/master/moduletree.png)

Although this can easily be resolved via deleting the .terraform/modules directory, the command above will always grab the latest version on Master


##Versioning Remote Modules