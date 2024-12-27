-- (c) Manuel Alejandro Gómez Nicasio <az-dev@outlook.com>
--
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code.

--
--
--
--

--
-- This query produces two rows, pick the one where the customer is **male**.
-- Hint: Based on the name
--

WITH INVESTIGATOR AS (
    SELECT C.CITYSTATEZIP
    FROM CUSTOMERS C
    WHERE PHONE = '$P{DAY02_SOLUTION}'
)
SELECT DISTINCT
    NAME
    , PHONE
    , STRFTIME('%Y', C.BIRTHDATE) AS YEAR
    , STRFTIME('%m', C.BIRTHDATE) AS MONTH
FROM
    CUSTOMERS C, INVESTIGATOR
WHERE
    YEAR IN ('1903', '1915', '1927', '1939', '1951', '1963', '1975', '1987', '1999', '2011', '2023')
    AND MONTH IN ('06', '07')
    AND UPPER(C.CITYSTATEZIP) = UPPER(INVESTIGATOR.CITYSTATEZIP)


