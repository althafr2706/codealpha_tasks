@echo off
echo ============================================
echo    ShopDjango - Auto Setup
echo ============================================
echo.

echo Step 1: Setting execution policy...
powershell -Command "Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force"

echo Step 2: Creating virtual environment...
python -m venv venv

echo Step 3: Activating virtual environment...
call venv\Scripts\activate.bat

echo Step 4: Installing Django...
pip install -r requirements.txt

echo Step 5: Setting up database...
python manage.py migrate

echo.
echo ============================================
echo   Almost done! Create your admin account:
echo ============================================
python manage.py createsuperuser

echo.
echo Step 7: Starting the server...
echo.
echo ============================================
echo   Your store is ready!
echo   Open your browser and go to:
echo   http://127.0.0.1:8000
echo ============================================
echo.
python manage.py runserver
