from app import  app
import unittest

class test_class(unittest.TestCase):
    def test_1(self):
        client = app.test_client()
        res = client.get('/')
        self.assertEqual(res.status_code,200)

    def test_2_get_index_content(self):
        client = app.test_client()
        res = client.get('/')
        self.assertIn('pavan',str(res.data))

    def test_3_get_user(self):
        client = app.test_client()
        res = client.get('/get_user/1')
        self.assertEqual(res.status_code,200)

if __name__ == "__main__":
    unittest.main()
