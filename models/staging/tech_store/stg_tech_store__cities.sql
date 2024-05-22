WITH

CITIES AS (

    SELECT * FROM {{ source('tech_store', 'city') }}

),

FINAL AS (

    SELECT
        ID AS CITY_ID,
        NAME AS CITY_NAME,
        STATEID AS STATE_ID,
        ZIPID AS ZIP_CODE_ID
    FROM CITIES

)

SELECT * FROM FINAL
