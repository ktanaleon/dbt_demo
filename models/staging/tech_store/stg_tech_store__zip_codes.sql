WITH

ZIP_CODES AS (

    SELECT * FROM {{ source('tech_store', 'zip') }}

),

FINAL AS (

    SELECT
        ID AS ZIP_CODE_ID,
        CODE AS ZIP_CODE

    FROM ZIP_CODES

)

SELECT * FROM FINAL
