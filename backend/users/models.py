from django.contrib.auth.models import AbstractBaseUser, BaseUserManager, PermissionsMixin
from django.db import models
from django.utils.translation import gettext_lazy as _

import re

def validate_iin(iin):
    pattern = r'^\d{12}$'
    return re.match(pattern, iin) is not None


class CustomUserManager(BaseUserManager):
    def create_user(self, iin, password=None, **extra_fields):
        if not validate_iin(iin):
            raise ValueError(_('The IIN must be provided and valid'))
        if self.model.objects.filter(iin=iin).exists():
            raise ValueError(_('A user with this IIN already exists.'))
        user = self.model(iin=iin, **extra_fields)
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, iin, password=None, **extra_fields):
        extra_fields.setdefault('is_staff', True)
        extra_fields.setdefault('is_superuser', True)

        if extra_fields.get('is_staff') is not True:
            raise ValueError(_('Superuser must have is_staff=True.'))
        if extra_fields.get('is_superuser') is not True:
            raise ValueError(_('Superuser must have is_superuser=True.'))

        return self.create_user(iin, password, **extra_fields)

class CustomUser(AbstractBaseUser, PermissionsMixin):
    iin = models.CharField(max_length=12, unique=True)
    is_staff = models.BooleanField(default=False)
    is_active = models.BooleanField(default=True)

    objects = CustomUserManager()

    USERNAME_FIELD = 'iin'
    REQUIRED_FIELDS = []

    def __str__(self):
        return self.iin

class ExternalPatient(models.Model):
    iin = models.CharField(max_length=12, primary_key=True)


    class Meta:
        managed = False
        db_table = 'patients_table_name'
