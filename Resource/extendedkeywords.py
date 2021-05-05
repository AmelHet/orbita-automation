
import random
import string

__version__ = '1.0.0'


class extendedkeywords(object):
    ROBOT_LIBRARY_VERSION = __version__
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'

    def get_random_name(self, email_length):
        letters = string.ascii_lowercase[:12]
        return ''.join(random.choice(letters) for i in range(email_length))

    def generate_random_emails(self, length):

        domains = ["hotmail.com", "gmail.com", "aol.com",
                   "mail.com", "mail.kz", "yahoo.com"]

        return [self.get_random_name(length)
                + '@'
                + random.choice(domains)]

    def generate_random_password(self, password_length = 8):
        letters = string.ascii_lowercase[:12]
        return ''.join(random.choice(letters) for i in range(password_length))

    def generate_invalid_email(self,lenth1:int = 2 ,lenth2:int = 2):
        """
        return: generate invalid email (without using @)
        lenth1: lenth before dot
        lenth2: lenth after dot
        """
        letters = string.ascii_lowercase[:12]
        return (''.join(random.choice(letters) for i in range(lenth1)+"."+''.join(random.choice(letters) for i in range(lenth2))







