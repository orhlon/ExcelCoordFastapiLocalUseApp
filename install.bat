cd C:\Users\%USERNAME%\Desktop
mkdir ExcelAddCoordsApp
cd ExcelAddCoordsApp
mkdir icon
mkdir logic
echo cd logic > "C:\Users\%USERNAME%\Desktop\ExcelAddCoordsApp\run.bat"
echo uvicorn ExcelAddCoordsApp:app --reload >> "C:\Users\%USERNAME%\Desktop\ExcelAddCoordsApp\run.bat"
echo добваить ярлык с иконкой
curl "https://raw.githubusercontent.com/orhlon/icon/refs/heads/main/github.com.orhlon.x128.ico" -o "%TEMP%\github.com.orhlon.x128.ico"
(
echo [InternetShortcut]
echo URL="http://127.0.0.1:8000/"
echo IconFile="%TEMP%\github.com.orhlon.x128.ico"
echo IconIndex=0
) > "%USERPROFILE%\Desktop\ExcelAddCoordsApp\ExcelAddCoordsApp.url"
curl "https://raw.githubusercontent.com/orhlon/ExcelCoordFastapiLocalUseApp/refs/heads/main/ExcelAddCoordsApp.py" -o "%TEMP%\ExcelAddCoordsApp.py"
echo "Запустить run.bat, затем запустить ExcelAddCoordsApp" > "C:\Users\%USERNAME%\Desktop\ExcelAddCoordsApp\readme.txt"
(
echo uvicorn ExcelAddCoordsApp:app --reload
)>> "C:\Users\%USERNAME%\Desktop\ExcelAddCoordsApp\run.bat"
curl "https://github.com/orhlon/ExcelCoordFastapiLocalUseApp/raw/refs/heads/main/BazaCoordinat.xlsx" -o "%TEMP%\BazaCoordinat.xlsx"
copy %TEMP%\BazaCoordinat.xlsx C:\Users\%USERNAME%\Desktop\ExcelAddCoordsApp\BazaCoordinat.xlsx
copy %TEMP%\ExcelAddCoordsApp.py C:\Users\%USERNAME%\Desktop\ExcelAddCoordsApp\logic\ExcelAddCoordsApp.py
pip install fastapi uvicorn openpyxl geopy python-multipart
