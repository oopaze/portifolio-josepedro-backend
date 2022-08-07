from django.core.management.base import BaseCommand

from ...models import User

from uuid import uuid4

class Command(BaseCommand):
    def handle(self, *args, **options):
      user = User.objects.create(**{
        "email": f"{uuid4()}@gmail.com",
        "username": "",
        "first_name": "User",
        "last_name": "Random"
      })
      
      password = str(uuid4())
      user.is_staff = True
      user.is_superuser = True
      user.set_password(password)
      
      user.save()
      
      print(user.email, "seu email")
      print(password, "sua senha")