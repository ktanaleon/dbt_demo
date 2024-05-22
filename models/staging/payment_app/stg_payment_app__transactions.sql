WITH

TRANSACTIONS AS (

    SELECT * FROM {{ source('payment_app', 'transactions') }}

),

FINAL AS (

    SELECT
        ID AS TRANSACTION_ID,
        PAYLOAD,
        PAYLOAD:amount::NUMERIC(18, 2) AS AMOUNT_IN_USD,
        PAYLOAD:cost_per::NUMERIC(18, 2) AS COST_PER_UNIT_IN_USD,
        PAYLOAD:order_id::INTEGER AS ORDER_ID,
        PAYLOAD:product_id::INTEGER AS PRODUCT_ID,
        PAYLOAD:quantity::INTEGER AS QUANTITY,
        PAYLOAD:tax::NUMERIC(18, 2) AS TAX_IN_USD,
        PAYLOAD:total_charged::NUMERIC(18, 2) AS TOTAL_CHARGED_IN_USD,
        DATE AS CREATED_AT
    FROM TRANSACTIONS

)

SELECT * FROM FINAL
