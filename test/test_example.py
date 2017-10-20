"""Example tests for a sample project. Only verify that imports are done properly."""
import unittest


class ExampleTest(unittest.TestCase):
    def test_thing(self):
        try:
            import amqp
            import jinja2
            import kombu
            import gevent
            import retrying
            import biloba
        except Exception as e:
            raise
        self.assertTrue(True)
