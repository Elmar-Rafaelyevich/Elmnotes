@echo off
echo RUN

cd C:\Users\Elmar\Desktop

REM Check if folder already exists
if exist Elmnotes (
    echo Folder Elmnotes already exists, skipping clone...
) else (
    git clone https://github.com/Elmar-Rafaelyevich/Elmnotes.git
)

cd Elmnotes

REM Create virtual environment if it doesn't exist
if not exist venv (
    python -m venv venv
)

REM Activate virtual environment
call venv\Scripts\activate.bat

REM Install dependencies if requirements.txt exists
if exist requirements.txt (
    pip install -r requirements.txt
)

echo Setup finished!
pause
