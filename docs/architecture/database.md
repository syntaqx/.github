# Database Architecture

> ...

## Data types

[objectid]: https://docs.mongodb.com/manual/reference/method/ObjectId/

- UUID columns (generaly `id` or `*_id`) are [`bson.ObjectID`][objectid] and
  store most efficiently as `BINARY(12)` format

## Naming conventions

- Table names should be pluralized including concatentations (ie, `users_emails`)
- 1:1 relationship columns should be named in the singular (ie, `user_id`)
- `DATETIME` column names should be appended with `_at`
- `BOOL` or similar formats column names should be prepended with `is_`

## Design considerations

- For non-volatile unique objects, prefer the soft delete timestamp `deleted_at`

## Sources

- https://www.clever-cloud.com/blog/engineering/2015/05/20/why-auto-increment-is-a-terrible-idea/
- https://stackoverflow.com/questions/5020568/soft-delete-best-practices-php-mysql

- `id` and `*_id` columns use BINARY(12) for bson.ObjectId (rather than UUID)
  - https://www.clever-cloud.com/blog/engineering/2015/05/20/why-auto-increment-is-a-terrible-idea/
- `password` fields are BINARY(60) for bcrypt
- `DATETIME` columns should end with `_at` whenever possible
- `BOOL`-like columns should start with `is_` whenever possible
- Soft Deletes through deleted_at whenever possible. (don't rely on foreign keys for deletion)
  - https://stackoverflow.com/questions/5020568/soft-delete-best-practices-php-mysql
