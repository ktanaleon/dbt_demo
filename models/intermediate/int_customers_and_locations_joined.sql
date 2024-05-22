WITH

CUSTOMERS AS (

    SELECT * FROM {{ ref('stg_tech_store__customers') }}

),

CITIES AS (

    SELECT * FROM {{ ref('stg_tech_store__cities') }}

),

STATES AS (

    SELECT * FROM {{ ref('stg_tech_store__states') }}

),

ZIP_CODES AS (

    SELECT * FROM {{ ref('stg_tech_store__zip_codes') }}

),

EMPLOYEES AS (

    SELECT * FROM {{ ref('stg_tech_store__employees') }}

),

CUSTOMERS_AND_LOCATIONS_JOINED AS (
    SELECT
        CUSTOMERS.CUSTOMER_ID,
        CITIES.CITY_NAME,
        STATES.STATE_NAME,
        ZIP_CODES.ZIP_CODE
    FROM CUSTOMERS

    LEFT JOIN CITIES
        ON CUSTOMERS.CITY_ID = CITIES.CITY_ID

    LEFT JOIN STATES
        ON CITIES.STATE_ID = STATES.STATE_ID

    LEFT JOIN ZIP_CODES
        ON CITIES.ZIP_CODE_ID = ZIP_CODES.ZIP_CODE_ID
)

SELECT * FROM CUSTOMERS_AND_LOCATIONS_JOINED
