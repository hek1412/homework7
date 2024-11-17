import os
import psycopg2

def get_ages():
    connection = psycopg2.connect(
        dbname=os.environ.get('POSTGRES_DB', 'Aleksandrov'),
        user=os.environ.get('POSTGRES_USER', 'postgres'),
        password=os.environ.get('POSTGRES_PASSWORD', 'password'),
        host='postgres',
        port=5432
    )

    cursor = connection.cursor()

    query = """
    SELECT MIN(age), MAX(age) FROM age_table
    WHERE LENGTH(name) < 6;
    """
    cursor.execute(query)

    min_age, max_age = cursor.fetchone()

    print(f'Минимальный возраст: {min_age}, Максимальный возраст: {max_age}')

    cursor.close()
    connection.close()

if __name__ == '__main__':
    get_ages()