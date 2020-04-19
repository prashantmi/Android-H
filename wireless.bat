setlocal
adb kill-server
adb connect %IP%:5555 | find /i "connected to" >nul
if errorlevel 1 ( 
    echo.
    echo        No Devices Connected
    echo        Please Refer Previous Menu ***Note***
    echo.
    echo        Press Any Key To Continue...
    pause >nul
    goto getip
) else (
     cls
    echo        Android Hacker Is connected With The Victim's Device Wirelessly.
    echo        Now You Can Remove The USB
    echo.
    echo        Press Any Key To Continue To Menu 2
    pause >nul
    goto menu2
)



   ::command > filename        Redirect command output to a file

   ::command >> filename       APPEND into a file

   ::command < filename        Type a text file and pass the text to command

   ::commandA  |  commandB     Pipe the output from commandA into commandB

   ::commandA &  commandB      Run commandA and then run commandB
   commandA && commandB      Run commandA, if it succeeds then run commandB
   commandA || commandB      Run commandA, if it fails then run commandB

   commandA && commandB || commandC
                             If commandA succeeds run commandB, if it fails commandC::@echo off
::getip
::set ip=""
::set /p ip=[-]  Please Enter IP Address :
::echo.
::if %ip%=="" echo      Please Enter Correct Ip & pause >nul & cls & goto getip
::goto wireless

:wireless
setlocal
::adb kill-server
::connected
echo %line1% | find/i "connected to" >nul
::echo %line1% | find/i /i "connected to" >nul

    if errorlevel 0 (
    	goto m2 )

    else (
             cls 
        echo. & echo        Android Hacker Is connected With The Victim's Device Wirelessly.
        echo        Now You Can Remove The USB & echo.
        echo        Press Any Key To Continue To Menu 2 & pause >nul
        ::goto menu2
        )
     	
      

       	
       	:m2

         ::laptop wifi off 
         echo %line1% | find/i "unreachable host" >nul
        
     if errorlevel 1 (
              goto m3 )

     else(
                      echo. & echo laptop/Desktop Wifi IS Off Or Not connected To Local Wifi/LAN
                 echo. & echo connect laptop/Desktop To The LAN. & echo. & pause >nul
                 echo Press Any Key To Go Back
                 ::goto getip
                
     	 )
     	
               :m3
             	:: Wrong Ip format
             	echo %line1% | find/i "no such host" >nul
            
      if errorlevel 1 (
      	   goto m4 )
        else(
                          echo. & echo  Wrong Format IP Address...
                  echo. & echo  Please Enter IP In Given Format Example "192.168.10.10"
                  echo. & echo  Press Any Key To Continue....& pause >nul
                  ::goto getip 
                
        	 )

                        :m4
              
             	    	::5555 port off
             	    	echo %line1% | find/i "refused it" >nul
         if errorlevel 1 (
                    
                          
          	goto m5 )
            else (
 echo. & echo Android Wireless Port Is Off
             	      echo. & echo Press Any Key To Turn On & pause >nul
             	      ::goto adbport
             	 
      )
          	

                 	:m5
              
             	   :: Android Wifi Off
             	echo %line1% | find/i "faild to respond" >nul
              
          if errorlevel 1 (
          	  	goto m6 )
                 
                    
             else (
               echo. & echo  Could Not connect To Given IP
             	     echo. & echo  Reason Can Be...
             	     echo. & echo  Android Is Not connected To Local Wifi
             	     echo. & echo  Or No Device With This Ip In LAN & pause >nul
             	     ::goto getip
             	  

            )
              	
                 
                 :m6
             	   echo.
             	   echo   Unknown Error & pause >nul 
             	   :: goto getip
                  
pause >nul


   ::command > filename        Redirect command output to a file

   ::command >> filename       APPEND into a file

   ::command < filename        Type a text file and pass the text to command

   ::commandA  |  commandB     Pipe the output from commandA into commandB

   ::commandA &  commandB      Run commandA and then run commandB
   commandA && commandB      Run commandA, if it succeeds then run commandB
   commandA || commandB      Run commandA, if it fails then run commandB

   commandA && commandB || commandC
                             If commandA succeeds run commandB, if it fails commandC