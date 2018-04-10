CREATE VOLATILE TABLE NewTableWithDatatypes AS (
	SELECT * FROM schema.view_to_copy_columns_from
) WITH NO DATA;

SHOW TABLE NewTableWithDatatypes;
