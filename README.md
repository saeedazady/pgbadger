# pgbadger

Local workflow to generate [pgbadger](https://github.com/darold/pgbadger) HTML reports from PostgreSQL logs (for example from `example-db`).

## Layout

```
logs/postgresql.log   # input: copy the Postgres log here
report/out.html       # output: open this in a browser
report/*.sql          # optional: queries saved from the report
docker-compose.yaml   # pgbadger runner
```

## Prerequisites

- Docker Compose
- Access to the DB host that produced the log

## 1. Copy the log

Place the PostgreSQL log at `logs/postgresql.log`.

Example (adjust the remote path to match the host):

```bash
scp root@example-db:/path/to/postgresql.log logs/postgresql.log
```

Typical locations on the server:

- `/var/lib/pgsql/data/log/`
- `/var/log/postgresql/`

## 2. Generate the report

```bash
docker compose run --rm pgbadger
```

This runs `repo.tara360.ir/uphold/pgbadger:latest` (linux/amd64), reads `logs/postgresql.log`, and writes `report/out.html`.

A ~700MB log previously parsed in one pass (~247k queries, ~13k events).

## 3. Open the report

Open `report/out.html` in a browser. Save interesting queries under `report/` as `.sql` files (they are not gitignored).

## Extra flags

Override the default command when you need more jobs or a different output:

```bash
docker compose run --rm pgbadger /logs/postgresql.log --jobs 12 -o /data/out.html
```

To parse every file in `logs/`:

```bash
docker compose run --rm pgbadger /logs --jobs 12 --outdir /data
```

## Git

Logs and generated HTML are gitignored. Only compose, README, saved SQL, and directory placeholders are meant to be committed.
