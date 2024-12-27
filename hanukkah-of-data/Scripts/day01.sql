-- (c) Manuel Alejandro Gómez Nicasio <az-dev@outlook.com>
--
-- For the full copyright and license information, please view the LICENSE
-- file that was distributed with this source code.

--
-- SUBSTRING
--      https://www.sqlite.org/lang_corefunc.html#substr
--      https://www.sqlitetutorial.net/sqlite-functions/sqlite-substr/
--
-- REPLACE
--      https://www.sqlite.org/lang_corefunc.html#replace
--      https://www.sqlitetutorial.net/sqlite-replace-function/
--
-- INSTR
--      https://www.sqlite.org/lang_corefunc.html#instr
--      https://www.sqlitetutorial.net/sqlite-functions/sqlite-instr/
--


-- SELECT load_extension('${project.path}/../sqlean/sqlean.so');


WITH LASTNAMES AS (
    SELECT DISTINCT
        C.NAME
        , C.PHONE
        , LOWER(TRIM(SUBSTRING(NAME, INSTR(NAME, ' ')))) AS LASTNAME
    FROM
        CUSTOMERS C
    WHERE
        LENGTH(LASTNAME) = 10
        AND INSTR(LASTNAME, ' ') = 0
), LASTNAME_SEPARATED AS (
    SELECT
        L.NAME
        , L.PHONE
        , SUBSTRING(L.LASTNAME, 1, 1) AS ONE
        , SUBSTRING(L.LASTNAME, 2, 1) AS TWO
        , SUBSTRING(L.LASTNAME, 3, 1) AS THREE
        , SUBSTRING(L.LASTNAME, 4, 1) AS FOUR
        , SUBSTRING(L.LASTNAME, 5, 1) AS FIVE
        , SUBSTRING(L.LASTNAME, 6, 1) AS SIX
        , SUBSTRING(L.LASTNAME, 7, 1) AS SEVEN
        , SUBSTRING(L.LASTNAME, 8, 1) AS EIGHT
        , SUBSTRING(L.LASTNAME, 9, 1) AS NINE
        , SUBSTRING(L.LASTNAME, 10, 1) AS TEN
    FROM LASTNAMES L
), LASTNAME_TO_PHONE AS (
    SELECT
        NAME
        , PHONE
        , REPLACE(SUBSTRING(PHONE, 1), '-', '') AS PHONE_STRIPPED
        , CONCAT(
            CASE
                WHEN ONE = 'a' OR ONE = 'b' OR ONE = 'c' THEN '2'
                WHEN ONE = 'd' OR ONE = 'e' OR ONE = 'f' THEN '3'
                WHEN ONE = 'g' OR ONE = 'h' OR ONE = 'i' THEN '4'
                WHEN ONE = 'j' OR ONE = 'k' OR ONE = 'l' THEN '5'
                WHEN ONE = 'm' OR ONE = 'n' OR ONE = 'o' THEN '6'
                WHEN ONE = 'p' OR ONE = 'q' OR ONE = 'r' OR ONE = 's' THEN '7'
                WHEN ONE = 't' OR ONE = 'u' OR ONE = 'v' THEN '8'
                WHEN ONE = 'w' OR ONE = 'x' OR ONE = 'y' OR ONE = 'z' THEN '9'
            END
            , CASE
                WHEN TWO = 'a' OR TWO = 'b' OR TWO = 'c' THEN '2'
                WHEN TWO = 'd' OR TWO = 'e' OR TWO = 'f' THEN '3'
                WHEN TWO = 'g' OR TWO = 'h' OR TWO = 'i' THEN '4'
                WHEN TWO = 'j' OR TWO = 'k' OR TWO = 'l' THEN '5'
                WHEN TWO = 'm' OR TWO = 'n' OR TWO = 'o' THEN '6'
                WHEN TWO = 'p' OR TWO = 'q' OR TWO = 'r' OR TWO = 's' THEN '7'
                WHEN TWO = 't' OR TWO = 'u' OR TWO = 'v' THEN '8'
                WHEN TWO = 'w' OR TWO = 'x' OR TWO = 'y' OR TWO = 'z' THEN '9'
            END
            , CASE
                WHEN THREE = 'a' OR THREE = 'b' OR THREE = 'c' THEN '2'
                WHEN THREE = 'd' OR THREE = 'e' OR THREE = 'f' THEN '3'
                WHEN THREE = 'g' OR THREE = 'h' OR THREE = 'i' THEN '4'
                WHEN THREE = 'j' OR THREE = 'k' OR THREE = 'l' THEN '5'
                WHEN THREE = 'm' OR THREE = 'n' OR THREE = 'o' THEN '6'
                WHEN THREE = 'p' OR THREE = 'q' OR THREE = 'r' OR THREE = 's' THEN '7'
                WHEN THREE = 't' OR THREE = 'u' OR THREE = 'v' THEN '8'
                WHEN THREE = 'w' OR THREE = 'x' OR THREE = 'y' OR THREE = 'z' THEN '9'
            END
            , CASE
                WHEN FOUR = 'a' OR FOUR = 'b' OR FOUR = 'c' THEN '2'
                WHEN FOUR = 'd' OR FOUR = 'e' OR FOUR = 'f' THEN '3'
                WHEN FOUR = 'g' OR FOUR = 'h' OR FOUR = 'i' THEN '4'
                WHEN FOUR = 'j' OR FOUR = 'k' OR FOUR = 'l' THEN '5'
                WHEN FOUR = 'm' OR FOUR = 'n' OR FOUR = 'o' THEN '6'
                WHEN FOUR = 'p' OR FOUR = 'q' OR FOUR = 'r' OR FOUR = 's' THEN '7'
                WHEN FOUR = 't' OR FOUR = 'u' OR FOUR = 'v' THEN '8'
                WHEN FOUR = 'w' OR FOUR = 'x' OR FOUR = 'y' OR FOUR = 'z' THEN '9'
            END
            , CASE
                WHEN FIVE = 'a' OR FIVE = 'b' OR FIVE = 'c' THEN '2'
                WHEN FIVE = 'd' OR FIVE = 'e' OR FIVE = 'f' THEN '3'
                WHEN FIVE = 'g' OR FIVE = 'h' OR FIVE = 'i' THEN '4'
                WHEN FIVE = 'j' OR FIVE = 'k' OR FIVE = 'l' THEN '5'
                WHEN FIVE = 'm' OR FIVE = 'n' OR FIVE = 'o' THEN '6'
                WHEN FIVE = 'p' OR FIVE = 'q' OR FIVE = 'r' OR FIVE = 's' THEN '7'
                WHEN FIVE = 't' OR FIVE = 'u' OR FIVE = 'v' THEN '8'
                WHEN FIVE = 'w' OR FIVE = 'x' OR FIVE = 'y' OR FIVE = 'z' THEN '9'
            END
            , CASE
                WHEN SIX = 'a' OR SIX = 'b' OR SIX = 'c' THEN '2'
                WHEN SIX = 'd' OR SIX = 'e' OR SIX = 'f' THEN '3'
                WHEN SIX = 'g' OR SIX = 'h' OR SIX = 'i' THEN '4'
                WHEN SIX = 'j' OR SIX = 'k' OR SIX = 'l' THEN '5'
                WHEN SIX = 'm' OR SIX = 'n' OR SIX = 'o' THEN '6'
                WHEN SIX = 'p' OR SIX = 'q' OR SIX = 'r' OR SIX = 's' THEN '7'
                WHEN SIX = 't' OR SIX = 'u' OR SIX = 'v' THEN '8'
                WHEN SIX = 'w' OR SIX = 'x' OR SIX = 'y' OR SIX = 'z' THEN '9'
            END
            , CASE
                WHEN SEVEN = 'a' OR SEVEN = 'b' OR SEVEN = 'c' THEN '2'
                WHEN SEVEN = 'd' OR SEVEN = 'e' OR SEVEN = 'f' THEN '3'
                WHEN SEVEN = 'g' OR SEVEN = 'h' OR SEVEN = 'i' THEN '4'
                WHEN SEVEN = 'j' OR SEVEN = 'k' OR SEVEN = 'l' THEN '5'
                WHEN SEVEN = 'm' OR SEVEN = 'n' OR SEVEN = 'o' THEN '6'
                WHEN SEVEN = 'p' OR SEVEN = 'q' OR SEVEN = 'r' OR SEVEN = 's' THEN '7'
                WHEN SEVEN = 't' OR SEVEN = 'u' OR SEVEN = 'v' THEN '8'
                WHEN SEVEN = 'w' OR SEVEN = 'x' OR SEVEN = 'y' OR SEVEN = 'z' THEN '9'
            END
            , CASE
                WHEN EIGHT = 'a' OR EIGHT = 'b' OR EIGHT = 'c' THEN '2'
                WHEN EIGHT = 'd' OR EIGHT = 'e' OR EIGHT = 'f' THEN '3'
                WHEN EIGHT = 'g' OR EIGHT = 'h' OR EIGHT = 'i' THEN '4'
                WHEN EIGHT = 'j' OR EIGHT = 'k' OR EIGHT = 'l' THEN '5'
                WHEN EIGHT = 'm' OR EIGHT = 'n' OR EIGHT = 'o' THEN '6'
                WHEN EIGHT = 'p' OR EIGHT = 'q' OR EIGHT = 'r' OR EIGHT = 's' THEN '7'
                WHEN EIGHT = 't' OR EIGHT = 'u' OR EIGHT = 'v' THEN '8'
                WHEN EIGHT = 'w' OR EIGHT = 'x' OR EIGHT = 'y' OR EIGHT = 'z' THEN '9'
            END
            , CASE
                WHEN NINE = 'a' OR NINE = 'b' OR NINE = 'c' THEN '2'
                WHEN NINE = 'd' OR NINE = 'e' OR NINE = 'f' THEN '3'
                WHEN NINE = 'g' OR NINE = 'h' OR NINE = 'i' THEN '4'
                WHEN NINE = 'j' OR NINE = 'k' OR NINE = 'l' THEN '5'
                WHEN NINE = 'm' OR NINE = 'n' OR NINE = 'o' THEN '6'
                WHEN NINE = 'p' OR NINE = 'q' OR NINE = 'r' OR NINE = 's' THEN '7'
                WHEN NINE = 't' OR NINE = 'u' OR NINE = 'v' THEN '8'
                WHEN NINE = 'w' OR NINE = 'x' OR NINE = 'y' OR NINE = 'z' THEN '9'
            END
            , CASE
                WHEN TEN = 'a' OR TEN = 'b' OR TEN = 'c' THEN '2'
                WHEN TEN = 'd' OR TEN = 'e' OR TEN = 'f' THEN '3'
                WHEN TEN = 'g' OR TEN = 'h' OR TEN = 'i' THEN '4'
                WHEN TEN = 'j' OR TEN = 'k' OR TEN = 'l' THEN '5'
                WHEN TEN = 'm' OR TEN = 'n' OR TEN = 'o' THEN '6'
                WHEN TEN = 'p' OR TEN = 'q' OR TEN = 'r' OR TEN = 's' THEN '7'
                WHEN TEN = 't' OR TEN = 'u' OR TEN = 'v' THEN '8'
                WHEN TEN = 'w' OR TEN = 'x' OR TEN = 'y' OR TEN = 'z' THEN '9'
            END
        ) AS PHONE_CALCULATED
    FROM LASTNAME_SEPARATED
)
SELECT NAME, PHONE
FROM LASTNAME_TO_PHONE
WHERE PHONE_STRIPPED = PHONE_CALCULATED


