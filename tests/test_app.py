import unittest
from app.main import app

class TestApp(unittest.TestCase):
     def setUp(self):
        self.app = app.test_client()
        self.app.testing = True

     def test_hello_world(self):
        response = self.app.get('/')
        html_content = response.data.decode('utf-8')
        self.assertEqual(response.status_code, 200)
        self.assertIn("<h1>Hello, World!", html_content)


if __name__ == '__main__':
    unittest.main()