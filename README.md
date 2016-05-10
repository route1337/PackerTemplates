Matt's Packer Templates
==============
This repo contains various packer templates I use to generate Vagrant boxes

InstallDisks Directory
------------
This directory contains DMG and ISO files, so they can't be checked in to git due to their size and/or licensing restrictions.
To generate the DMGs/ISOs for OS X systems use the prepare_iso.sh script in iso-prep

Preparing a MAC DMG to go into InstallDisks
------------
These are the steps to prepare a Mac DMG to go into InstallDisks (10.9-10.11)
  1. Download the Installer App from the Mac App Store (Yosemite for example)
  2. Run this command from inside iso-prep: sudo prepare_iso/prepare_iso.sh "/Applications/Install OS X Yosemite.app" out/
  3. Move the DMG from iso-prep/out/ to packer/InstallDisks/ and update the corresponding JSON file
  4. Run this command: packer build $jsonFile

Updating a template
------------
Each template JSON file must be updated if a version number or ISO file name/hash changes.
For example, the Mac templates would need the following changes:
  1. name, version, iso_url, iso_checksum_type, iso_checksum in "variables" section

Public boxes generated from these scripts
-----------------------------------------

None yet :(

Known Issues
------------
None so far :)

Credits for a good portion of the original materials
----------------------------------------------------

Most of the Mac related contents of iso-prep come from: [Tim Sutton's osx-vm-templates](https://github.com/timsutton/osx-vm-templates) under the [MIT License](https://github.com/timsutton/osx-vm-templates/blob/master/LICENSE.md)
Most of the Mac related contents of packer come from: [Fletcher Nichol's packer-templates](https://github.com/fnichol/packer-templates) which has no license mentioned
New El Capitan prepare_iso.sh in iso-prep comes from: [Antony Blakey's Gist](https://gist.github.com/AntonyBlakey/e0116fe82e596c5005d8) which has no license mentioned
