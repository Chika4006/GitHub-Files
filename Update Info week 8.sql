----Update ChildInfo with DoctrosID

update ChildInfo 
set DoctorID=5001+(AddressID-4000)
 where Right (AddressID,2) = AddressID-4000


 ----Update ChildInfo with EmergencyID

 update ChildInfo 
set EmergencyID=6000+(AddressID-4000)
 where Right (AddressID,2) = AddressID-4000

 ----Update ChildInfo with Hospital

   update ChildInfo 
set HospitalID=8000+(Right(AddressID,1)-5)		 
 where Right (AddressID,2) = AddressID-4000
 and right(AddressID,1)>5

   update ChildInfo 
set HospitalID=8000+(Right(AddressID,1))		 
 where Right (AddressID,2) = AddressID-4000
 and right(AddressID,1)<=5 and right(AddressID,1)>0


   update ChildInfo 
set HospitalID=8000+(Right(AddressID,1)+5)		 
 where Right (AddressID,2) = AddressID-4000
 and right(AddressID,1)=0

  update ChildInfo 
set HospitalID=8000+(Right(4026,1)-5)----8001		 
 where Right (4026,2) = 4026-4000
 and right(4026,1)>5

  update ChildInfo 
set HospitalID=8000+(Right(4020,1)-----8001		 
 where Right (4025,2) = 4025-4000
 and right(4020,1)<=5 and right(4020,1)>0
  
  
  
  update ChildInfo 
set HospitalID=8000+(Right(4020,1))	 
 where Right (4025,2) = 4025-4000
 and right(4020,1)<=5 and right(4020,1)>0


 ----Update Enrollment date base on 3yrs aftre DateOfBirth

 select DOB, DATEADD(Year, 3,dob) from ChildInfo
 Update ChildInfo
 set EnrolmentDate= DATEADD(year,3,dob)

 ----Homework
 ---Update the age of eah child base on the current date and the DateOfBirth