# TYPO3 CMS distribution for testing my extensions

This is a TYPO3 distribution which I use to manually test my extensions:

- [feuserextrafields](https://github.com/oliverklee-de/feuserextrafields)
- [oelib](https://github.com/oliverklee-de/oelib)
- [onetimeaccount](https://github.com/oliverklee-de/onetimeaccount)
  (once it supports TYPO3 13LTS)
- [seminars](https://github.com/oliverklee-de/seminars)
  (once it [supports TYPO3 13LTS](https://github.com/oliverklee-de/seminars/wiki/Early-access-program-for-newer-TYPO3-versions))
- [tea](https://github.com/TYPO3BestPractices/tea)

## Usage

This distribution uses [DDEV](https://github.com/drud/ddev). It requires at
least DDEV version 1.25.1.

### Initializing the project

```bash
ddev start
ddev composer install
ddev install-typo3
```

### Database dump and import

There are two commands available for dumping the database and for importing the
dump to and from the file `dump.sql`:

```bash
ddev db-dump
ddev db-import
```

The dump includes (and hence overwrite on import) FE users and FE user groups,
but not BE users or BE user groups. (So it is safe to add BE users and then
run the import.)

### Developing and testing extensions

To test a local development copies of extension in this distribution:

1. Copy the file `.ddev/docker-compose.extensions.yaml.template` to
   `.ddev/docker-compose.extensions.yaml`.
2. Modify the left-handside paths to match the directories of the extensions
   on your host machine.
3. Add other extensions as needed.

### Configuring PHPUnit

The DDEV documentation provides very good
[step-by-step instructions for the Docker setup in PhpStorm](https://ddev.readthedocs.io/en/stable/users/topics/phpstorm/).

After that, you need to configure the PhpStorm templates for PHPUnit tests:

- Configuration file: `config/UnitTests.xml`

Also, `config/UnitTests.xml` is the configuration file for unit tests,
while `config/FunctionalTests.xml` is the corresponding file for functional
tests.

## Relevant URLs and launch options

- Backend:
  - `ddev launch typo3`
- Frontend (DE):
  - `ddev launch`
- Frontend (EN): https://typo3-testing-10-4-en.ddev.site
- Mailpit:
  - `ddev launch -m`

## Credentials

Backend admin: `admin` / `Password1!`<br/>
Install tool password: `Password1!`

Frontend users:
- `attendee` / `attendee`
- `editor` / `editor`
- `manager` / `manager`
- `admin` / `password` (with all three of the above roles combined)
