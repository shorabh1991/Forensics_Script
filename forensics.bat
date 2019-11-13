@echo off
for %%d in (D: E: F: G: H: I:) do (
   if exist %%d\forensics.bat (
      echo USB at drive %%d connected
      %%d
      echo Forensics Information >>Forensics_Info.txt
      echo ********************* >>Forensics_Info.txt
      echo Date >>Forensics_Info.txt
      date /t >>Forensics_Info.txt
      echo Time >>Forensics_Info.txt
      time /t >>Forensics_Info.txt
      echo ======================================== >>Forensics_Info.txt
      echo SYSTEM SOFTWARE AND HARDWARE INFORMATION >>Forensics_Info.txt
      echo ======================================== >>Forensics_Info.txt
      systeminfo >>Forensics_Info.txt
      echo ======================================== >>Forensics_Info.txt
      echo Last Password Change
      echo ======================================== >>Forensics_Info.txt
      net user administrator >>Forensics_Info.txt
      echo ======================= >>Forensics_Info.txt
      echo NETWORK INTERFACES LIST >>Forensics_Info.txt
      echo ======================= >>Forensics_Info.txt
      ipconfig /all >>Forensics_Info.txt
      echo ========================== >>Forensics_Info.txt
      echo PRESENT RUNNING TASKS >>Forensics_Info.txt
      echo ========================== >>Forensics_Info.txt
      tasklist /v >>Forensics_Info.txt
      echo =============================== >>Forensics_Info.txt
      echo OPen Port Prestent working List >>Forensics_Info.txt
      echo =============================== >>Forensics_Info.txt
      netstat -o >>Forensics_Info.txt
      echo ========================== >>Forensics_Info.txt
      echo ALL Current Open Port List >>Forensics_Info.txt
      echo ========================== >>Forensics_Info.txt
      netstat -ano >>Forensics_Info.txt
      echo ================================================= >>Forensics_Info.txt
      echo LIST OR DISCONNECT SESSION BETWEEN PC AND NETWORK >>Forensics_Info.txt
      echo ================================================= >>Forensics_Info.txt
      net sessions >>Forensics_Info.txt
      echo ===================================== >>Forensics_Info.txt
      echo REMOTELY ANY FILES ACCESS INFORMATION >>Forensics_Info.txt
      echo ===================================== >>Forensics_Info.txt
      Openfiles >>Forensics_Info.txt
      echo ===================================== >>Forensics_Info.txt
      echo LOCALY REGISTRED NET BIOS INFORMATION >>Forensics_Info.txt
      echo ===================================== >>Forensics_Info.txt
      nbtstat -n >>Forensics_Info.txt 
      echo ============================= >>Forensics_Info.txt
      echo INTERNET ACCESSED INFORMATION >>Forensics_Info.txt
      echo ============================= >>Forensics_Info.txt
      ipconfig /displaydns >>Forensics_Info.txt
      echo ========================== >>Forensics_Info.txt
      echo COMMANDS HISTORY >>Forensics_Info.txt
      echo ========================== >>Forensics_Info.txt
      doskey /history >>Forensics_Info.txt
      echo ================================== >>Forensics_Info.txt
      echo Software Installed By Current User >>Forensics_Info.txt
      echo ================================== >>Forensics_Info.txt
      reg query HKCU\Software >>Forensics_Info.txt
      echo ================================== >>SoftVersion.txt
      echo Software version          >>SoftVersion.txt
      wmic /output:SoftVersion.txt product get name,version,InstallDate
      echo ================================== >Zips_Files_Info.txt
      echo LISTS OF ZIPS FILES FOUND          >>Zips_Files_Info.txt
      echo ================================== >>Zips_Files_Info.txt
      dir /s C:\*.zip >>Zips_Files_Info.txt
      dir /s D:\*.zip >>Zips_Files_Info.txt
      dir /s E:\*.zip >>Zips_Files_Info.txt
      dir /s F:\*.zip >>Zips_Files_Info.txt
      dir /s G:\*.zip >>Zips_Files_Info.txt
      dir /s H:\*.zip >>Zips_Files_Info.txt
      dir /s I:\*.zip >>Zips_Files_Info.txt
      echo ================================== >Media_Files_Info.txt
      echo LISTS OF MEDIA FILES FOUND          >>Media_Files_Info.txt
      echo ================================== >>Media_Files_Info.txt
      C:
      dir /s C:\*.Mp4 >> %%d/Media_Files_Info.txt
      dir /s C:\*.Mp3 >> %%d/Media_Files_Info.txt
      dir /s C:\*.avi >> %%d/Media_Files_Info.txt
      dir /s C:\*.mov >> %%d/Media_Files_Info.txt
      dir /s C:\*.wmv > %%d/>Media_Files_Info.txt
      dir /s C:\*.flv >> %%d/Media_Files_Info.txt
      dir /s C:\*.gif >> %%d/Media_Files_Info.txt
      echo ================================== >>Exe_Files_Info.txt
      echo List Of All Exe files Available C drive   >>Exe_Files_Info.txt 
      echo ================================== >>Exe_Files_Info.txt
      dir /s C:\*.exe >>Exe_Files_Info.txt
      D:
      echo Media file in D drive >> %%d/Media_Files_Info.txt
      dir /s D:\*.Mp4 >>%%d/Media_Files_Info.txt
      dir /s D:\*.Mp3 >>%%d/Media_Files_Info.txt
      dir /s D:\*.avi >>%%d/Media_Files_Info.txt
      dir /s D:\*.mov >>%%d/Media_Files_Info.txt
      dir /s D:\*.wmv >>%%d/Media_Files_Info.txt
      dir /s D:\*.flv >>%%d/Media_Files_Info.txt
      dir /s D:\*.gif >>%%d/Media_Files_Info.txt
      E:
      echo Media file in E drive >>%%d/Media_Files_Info.txt
      dir /s E:\*.Mp4 >>%%d/Media_Files_Info.txt
      dir /s E:\*.Mp3 >>%%d/Media_Files_Info.txt
      dir /s E:\*.avi >>%%d/Media_Files_Info.txt
      dir /s E:\*.mov >>%%d/Media_Files_Info.txt
      dir /s E:\*.wmv >>%%d/Media_Files_Info.txt
      dir /s E:\*.flv >>%%d/Media_Files_Info.txt
      dir /s E:\*.gif >>%%d/Media_Files_Info.txt
      F:
      echo Media file in F drive >>%%d/Media_Files_Info.txt
      dir /s F:\*.Mp4 >>%%d/Media_Files_Info.txt
      dir /s F:\*.Mp3 >>%%d/Media_Files_Info.txt
      dir /s F:\*.avi >>%%d/Media_Files_Info.txt
      dir /s F:\*.mov >>%%d/Media_Files_Info.txt
      dir /s F:\*.wmv >>%%d/Media_Files_Info.txt
      dir /s F:\*.flv >>%%d/Media_Files_Info.txt
      dir /s F:\*.gif >>%%d/Media_Files_Info.txt
      G:
      echo Media file in G drive >>%%d/Media_Files_Info.txt
      dir /s G:\*.Mp4 >>%%d/Media_Files_Info.txt
      dir /s G:\*.Mp3 >>%%d/Media_Files_Info.txt
      dir /s G:\*.avi >>%%d/Media_Files_Info.txt
      dir /s G:\*.mov >>%%d/Media_Files_Info.txt
      dir /s G:\*.wmv >>%%d/Media_Files_Info.txt
      dir /s G:\*.flv >>%%d/Media_Files_Info.txt
      dir /s G:\*.gif >>%%d/Media_Files_Info.txt
      echo ====================================== >> C_tree.txt
      echo Tree structure of C directory >> C_tree.txt
      echo ====================================== >> C_tree.txt
      C:
      tree /a C:\>>%%d/C_tree.txt
      echo ====================================== >> %%d/D_tree.txt
      echo Tree structure of D directory >> D_tree.txt
      echo ====================================== >> %%d/D_tree.txt
      D:
      tree /a D:\>>D_tree.txt
      echo ====================================== >> %%d/F_tree.txt
      echo Tree structure of C directory >> %%d/F_tree.txt
      echo ====================================== >> F_tree.txt
      F:
      tree /a F:\>> %%d/F_tree.txt
   )
)