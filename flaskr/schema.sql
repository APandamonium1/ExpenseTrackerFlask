DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS post;

CREATE TABLE user (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL
);

CREATE TABLE expenses (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  expenses_title TEXT NOT NULL,
  expenses_date DATETIME NOT NULL,
  expenses_description TEXT,
  expenses_amount REAL DEFAULT 0.00,
  expenses_category TEXT,
  author_id INTEGER NOT NULL,
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (author_id) REFERENCES user (id),
  FOREIGN KEY (expenses_category) REFERENCES expensesCategory (categories)
);

CREATE TABLE expensesCategory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    categories TEXT NOT NULL
)