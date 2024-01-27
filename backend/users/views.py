from rest_framework import status
from rest_framework.response import Response
from rest_framework.views import APIView
from .serializers import CustomUserSerializer, CustomTokenObtainPairSerializer, CustomTokenRefreshSerializer
from .models import CustomUser
from rest_framework_simplejwt.views import TokenObtainPairView, TokenRefreshView
from django.db import IntegrityError

class CreateUserView(APIView):
    def post(self, request):
        serializer = CustomUserSerializer(data=request.data)
        if serializer.is_valid():
            user = serializer.save()
            token_serializer = CustomTokenObtainPairSerializer(data={
                'iin': request.data['iin'],
                'password': request.data['password']
            })
            CustomUser.objects.update_user_from_external_source(user.iin)
            if token_serializer.is_valid():
                return Response({
                    'user': serializer.data,
                    'token': token_serializer.validated_data
                }, status=status.HTTP_201_CREATED)
            else:
                print("Token serializer errors:", token_serializer.errors)
                return Response(token_serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        else:
            print("User serializer errors:", serializer.errors)
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class CustomTokenObtainPairView(TokenObtainPairView):
    serializer_class = CustomTokenObtainPairSerializer

class CustomTokenRefreshView(TokenRefreshView):
    serializer_class = CustomTokenRefreshSerializer