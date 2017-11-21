These two scripts try to automatically obtain and install Let's Encrypt certs
to FreeIPA web interface.

To use it, do this:
* BACKUP /etc/apache2/nssdb to some safe place (it contains private keys!)
* clone/unpack all scripts including "ca" subdirectory somewhere (referred as "script directory" below)
* `cp config.template.sh config.sh`
* set WORKDIR in `config.sh` to your script directory
* set EMAIL in `config.sh` to your email (used to register Let's Encrypt)
* `cd` to your script directory
* run setup-le.sh script once to prepare the machine. The script will:
  * install Let's Encrypt client package
  * install Let's Encrypt CA certificates into FreeIPA certificate store
  * requests new certificate for FreeIPA web interface
* run renew-le.sh script once a day: it will renew the cert as necessary

Note: every script should run as root.

If you have any problem, feel free to contact FreeIPA team:
http://www.freeipa.org/page/Contribute#Communication
