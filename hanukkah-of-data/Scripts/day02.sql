-- (c) Manuel Alejandro Gómez Nicasio <az-dev@outlook.com>
--
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code.

--
-- STRFTIME
--      https://www.sqlite.org/lang_datefunc.html#:~:text=number%20of%20seconds.-,The%20strftime()%20function,-returns%20the%20date
--
--

SELECT DISTINCT
    C.NAME
    , C.PHONE
    , LOWER(TRIM(SUBSTRING(NAME, INSTR(NAME, ' ')))) AS LASTNAME
FROM
    CUSTOMERS C
    JOIN ORDERS O ON C.CUSTOMERID = O.CUSTOMERID
    JOIN ORDERS_ITEMS OI ON OI.ORDERID= O.ORDERID
    JOIN PRODUCTS P ON P.SKU = OI.SKU 
WHERE 
    STRFTIME('%Y', O.ORDERED) = '2017'
    AND C.NAME LIKE 'J%'
    AND LASTNAME LIKE 'P%'
    AND UPPER(P.DESC) LIKE '%BAGEL%'


