SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[TrainerList]
AS(
SELECT EMP_Plant,
       EMP_EmpID,
       EMP_FirstName,
       EMP_LastName,
       EMP_LongName,
       EMP_EmpStatus,
       EMP_StartDate,
       EMP_Dept,
       EMP_Role,
       EMP_JobTitle,
       EMP_ReportsTo,
       EMP_ShiftDesc,
       CASE
           WHEN EMP_Dept = 'NPI' THEN
               1
           WHEN EMP_Role = 'TRAINER' THEN
               1
           WHEN EMP_EmpID = '100943' THEN
               1
           WHEN EMP_EmpID IN ( '100252', '105935', '100328', '106417', '104322', '108171', '104698', '103486',
                               '108237', '102850', '104521', '101465', '101374', '102119', '100765', '100294',
                               '102518', '101101', '100211', '105018', '100143', '103989', '100214', '106607',
                               '105233', '104327', '101105', '100394', '100113', '101582', '100375', '100218',
                               '103842', '106177', '100561', '102112', '100561', '112110', '101311', '100989',
                               '101062', '101585', '103842', '107553', '100294', '100765', '100967', '100420',
                               '100203', '102269', '104521', '109353', '110429', '110147', '100206', '112112',
                               '112119', '107996', '108416', '101441', '106839', '107751', '109061', '100189',
                               '102102', '106872', '102918', '106894', '106647', '101465', '109236', '105233'
                             ) THEN
               1
           ELSE
               0
       END AS TrainerFlag
FROM PRODDIST.dbo.Base_EMPBasic AS a);
GO
