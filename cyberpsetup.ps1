function webpull {
	param (
		$webaddr,
		$dest,
		$file
	)
	Invoke-WebRequest -Uri $webaddr -OutFile $dest+$file
}

$URL="https://www.7-zip.org/a/7z1900-x64.exe"
$pathdest="C:/users/CP/desktop/"
$filename="7-zip.exe"

#7-zip
webpull -webaddr $URL -dest $pathdest -file $filename

#Run install
./$pathdest+$filename
set-alias sz "$env:ProgramFiles\7-Zip\7z.exe"

#css connection
$URL="https://r20.rs6.net/tn.jsp?f=001DBnuF3hiF2QVphsDEyveg-krpi2LQ1tLPIVrdSlDKFs84NpHuAvJnG903HY1XWy6JITqkfDXfEEvD1jzEOKnTWkO56bD4HpUfDEXXHyzPZGQE1KQwLaNWJk3QfuoHz01yibZCZsLpICUmP1FQaGcinAUYDUx352pbyoqNwxjy0JlipEQSNuFw21iADEQkBODM_VG-eeFcB6VxQw3syU7Bg==&c=MIvwHT1DP17wIpTEoTbX2s8z15OkggJpy1peu1mdLuVzE5AVJpIP9g==&ch=TRawu4QEelHNjjqr99-DMycYZcBb5jtEZLFBdHOd9dLnJtaJegNoOQ=="
$filename="CCS_Test_Connection-10.1.7z"

webpull -webaddr $URL -dest $pathdest -file $filename
sz x -o$pathdest $pathdest+$filename -r ;

#winmd5
$URL="https://www.winmd5.com/download/winmd5free.zip"
$filename="winmd5free.zip"

webpull -webaddr $URL -dest $pathdest -file $filename
sz x -o$pathdest $pathdest+$filename -r ;
