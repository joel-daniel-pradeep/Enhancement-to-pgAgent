-- Column: testschema."table_3_$%{}[]()&*^!@""'`\/#"."col_4_$%{}[]()&*^!@""'`\/#"

-- ALTER TABLE IF EXISTS testschema."table_3_$%{}[]()&*^!@""'`\/#" DROP COLUMN IF EXISTS "col_4_$%{}[]()&*^!@""'`\/#";

ALTER TABLE IF EXISTS testschema."table_3_$%{}[]()&*^!@""'`\/#"
    ADD COLUMN "col_4_$%{}[]()&*^!@""'`\/#" bigint GENERATED ALWAYS AS (((1 + 2) + 3)) STORED;

COMMENT ON COLUMN testschema."table_3_$%{}[]()&*^!@""'`\/#"."col_4_$%{}[]()&*^!@""'`\/#"
    IS 'Comment for create';
