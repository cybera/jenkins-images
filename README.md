# README

## Adding an Image

When adding a new image, first check if any scripts you need already exist
under `scripts/<platform>` and create any that don't. If possible, try to make
them modular so other images can reuse them.

Now create the Packer configuration for your image in `images/<image_name>.json`.
See other configurations for examples, but there are two important things to
remember:

1. The `image_name` option in the configuration should be the same as the file
name minus the `.json`
2. The first provisioner should usually run the `common.sh` for the distribution
