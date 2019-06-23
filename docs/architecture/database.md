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

## References

- https://www.clever-cloud.com/blog/engineering/2015/05/20/why-auto-increment-is-a-terrible-idea/
- https://stackoverflow.com/questions/5020568/soft-delete-best-practices-php-mysql
