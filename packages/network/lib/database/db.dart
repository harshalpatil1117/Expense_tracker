import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DB {
  static Database? _database;

  // Returns the existing database instance or initializes a new one.
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDatabase();
    return _database!;
  }

  // Initializes the SQLite database and creates the expenses table if it doesn't exist.
  Future<Database> initDatabase() async {
    var documentsDirectory = await getApplicationDocumentsDirectory();
    var path = join(documentsDirectory.path, "ExpenseTracker.db");
    return await openDatabase(path, version: 1, onCreate: _createDatabase);
  }

  // Creates the expenses table in the database.
  void _createDatabase(Database db, int version) async {
    await db.execute(
        "CREATE TABLE IF NOT EXISTS Expenses (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, amount TEXT NOT NULL, date TEXT NOT NULL, description TEXT)");
  }

  // Inserts a new expense record into the database.
  Future<int> insertExpense(String name, String amount, String date, String description) async {
    final db = await database;
    return await db.insert('Expenses', {
      'name': name,
      'amount': amount,
      'date': date,
      'description': description,
    });
  }

  // Fetches all expense records from the database.
  Future<List<Map<String, dynamic>>> getExpenses() async {
    final db = await database;
    return await db.query('Expenses');
  }

  // Fetches expense details by expenseID
  Future<List<Map<String, dynamic>>> getExpenseDetailsByExpenseId(
      String expenseId) async {
    print('ExpenseId : ${expenseId}');
    final db = await database;
    return await db.query(
      'Expenses',
      where: 'id = ?',
      whereArgs: [expenseId],
    );
  }

  // Updates an existing expense record in the database.
  Future<int> updateExpense(String id, String name, String amount, String date, String description) async {
    final db = await database;
    return await db.update(
      'Expenses',
      {
        'name': name,
        'amount': amount,
        'date': date,
        'description': description
      },
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Deletes an expense record from the database by its ID.
  Future<void> deleteExpenseByExpenseId(int expenseId) async {
    final db = await database;
    try {
      await db.delete(
        'Expenses',
        where: 'id = ?',
        whereArgs: [expenseId],
      );
    } catch (e) {
      print('Error deleting expense: $e');
    }
  }
}
