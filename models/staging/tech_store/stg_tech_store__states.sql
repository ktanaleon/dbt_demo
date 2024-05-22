WITH

STATES AS (

    SELECT * FROM {{ source('tech_store', 'state') }}

),

FINAL AS (

    SELECT
        ID AS STATE_ID,
        NAME AS STATE_NAME,
        CODE AS STATE_CODE

    FROM STATES

)

SELECT * FROM FINAL
