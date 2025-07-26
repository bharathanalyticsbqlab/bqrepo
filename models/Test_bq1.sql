SELECT term, y.year, y.term_frequency
FROM `bigquery-public-data.google_books_ngrams_2020.eng_1` AS n
JOIN UNNEST(years) as y
WHERE term = 'Database'
ORDER BY y.year DESC