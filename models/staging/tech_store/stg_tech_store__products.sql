WITH

PRODUCTS AS (

    SELECT * FROM {{ source('tech_store', 'product') }}

),

FINAL AS (

    SELECT
        ID AS PRODUCT_ID,
        NAME AS PRODUCT_NAME,
        CATEGORY,
        PRICE,
        CURRENCY

    FROM PRODUCTS

)

SELECT * FROM FINAL
