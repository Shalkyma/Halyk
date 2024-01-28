from django.contrib import admin
from django.urls import path
from .views import CreateUserView, CustomTokenObtainPairView, CustomTokenRefreshView, UserProfileView

urlpatterns = [
    path('register/', CreateUserView.as_view()),
    path('token/', CustomTokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('token/refresh/', CustomTokenRefreshView.as_view(), name='token_refresh'),
    path('user_profile/', UserProfileView.as_view()),
]