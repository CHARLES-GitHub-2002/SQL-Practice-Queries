# 🎬 TMDb SQL Exam Project

## 📘 Overview
This project is based on **The Movie Database (TMDb)**, an online movie and TV show database containing detailed information about films, actors, genres, production companies, awards, and more.  
The purpose of this project is to demonstrate SQL proficiency by exploring and analyzing TMDb’s structured dataset through a series of exam-style questions.

---

## 🧠 Project Objective
The SQL Exam aims to assess and strengthen understanding of:
- Database structure and relationships  
- Data retrieval and manipulation using **SQL queries**  
- Data cleaning and transformation techniques  
- Use of **JOINs**, **GROUP BY**, **aggregate functions**, and **string operations**  
- Applying concepts of **database normalization** and integrity  

---

## 🗂️ Dataset Description
The TMDb database contains multiple tables representing different entities in the movie ecosystem.  
Some of the key tables include:

| Table Name | Description |
|-------------|-------------|
| `movies` | Contains information about movie titles, release dates, popularity scores, and other metadata |
| `genres` | Lists all genres (e.g., Thriller, Drama, Comedy) |
| `genremap` | Maps each movie to its respective genres |
| `keywords` | Contains movie-related keywords |
| `keywordmap` | Maps keywords to movies |
| `actors` | Stores actor information |
| `casts` | Links actors to the movies and characters they played |
| `oscars` | Contains information about Oscar awards and nominations |
| `productioncompanies` | Lists movie production companies |
| `productioncompanymap` | Connects movies to their production companies |

---

## ⚙️ Tools and Environment
This project was executed using:
- **SQLite** (via `.db` file: `TMDB-a-4006.db`)
- **Jupyter Notebook** for interactive SQL queries
- **ipython-sql** and **SQLAlchemy** for database connectivity
- **Python 3 (Anaconda Distribution)**

---

## 🧩 Sample Queries and Tasks
Below are examples of analytical questions explored in this project:

1. **Genre and Keyword Analysis**  
   > How many movies belong to the "Thriller" genre and contain the word "love" in their keywords?

2. **Actor Insights**  
   > How many unique characters has *Vin Diesel* played in the database?

3. **Movie Metadata Exploration**  
   > What are the genres of the movie *"The Royal Tenenbaums"*?

4. **Production Analysis**  
   > Which three production companies have the highest average movie popularity scores?

5. **Award Data Cleaning**  
   > Update the `oscars` table to standardize years stored as "1932/1933" to "1933".

6. **Normalization Concept Review**  
   > Identify which statements about database normalization are true and how normalization reduces redundancy.

---

## 🧠 Key SQL Concepts Covered
- **JOINs**: Combining data across multiple tables (INNER, LEFT, RIGHT joins)  
- **Aggregate Functions**: `COUNT`, `AVG`, `MAX`, `MIN`, `SUM`  
- **Filtering & Conditions**: Using `WHERE`, `LIKE`, and pattern matching  
- **Grouping & Ordering**: Using `GROUP BY`, `HAVING`, and `ORDER BY`  
- **String Functions**: `SUBSTR()`, `INSTR()`, and text manipulation  
- **Data Cleaning**: Updating and standardizing inconsistent data  
- **Database Normalization**: Understanding data redundancy and relational structure  

---

## 🧾 Example Query
**Find the genres of the movie “The Royal Tenenbaums”:**
```sql
SELECT g.genre_name
FROM genres g
JOIN genremap gm ON g.genre_id = gm.genre_id
JOIN movies m ON m.movie_id = gm.movie_id
WHERE m.title = 'The Royal Tenenbaums';
