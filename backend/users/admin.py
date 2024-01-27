from django.contrib import admin
from django.contrib.auth.admin import UserAdmin as DjangoUserAdmin
from django.utils.translation import gettext_lazy as _

from .models import CustomUser

@admin.register(CustomUser)
class CustomUserAdmin(DjangoUserAdmin):
    list_display = ("iin", "is_staff")
    ordering = ("iin",)

    fieldsets = (
        (None, {'fields': ('iin', 'password')}),
        (_('Permissions'), {'fields': ('is_active', 'is_staff', 'is_superuser',
                                       'groups', 'user_permissions')}),
        (_('Important dates'), {'fields': ('last_login', 'date_joined')}),
    )
    add_fieldsets = (
        (None, {
            'classes': ('wide',),
            'fields': ('iin', 'password1', 'password2'),
        }),
    )