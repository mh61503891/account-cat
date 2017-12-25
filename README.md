# Account Cat

This tools is under construction.

### Usage

Create a database:

```bash
$ account-cat create example.sqlite3
```

Import records:

```bash
$ account-cat import example.sqlite3 people.csv
```

Search records:

```bash
$ account-cat search example.sqlite3 "query"
```

### The data format of a CSV file for importing

| column     |
| ---------- |
| id         |
| user_id    |
| user_name  |
| name       |
| name_ruby  |
| department |
| division   |
| unit       |
| area       |
| email      |
| source     |
