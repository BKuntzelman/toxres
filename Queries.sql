-- qryAllMultipleReferenceTests:
SELECT tblReferenceNumbers.Test_Number
FROM tblReferenceNumbers
GROUP BY tblReferenceNumbers.Test_Number
HAVING (((Count(tblReferenceNumbers.Reference_Number))>1));

-- qryDrillDownExposure:
SELECT exposure.*
FROM exposure
WHERE (((exposure.Parent_Record)=[Forms]![frmTestDrillDown]![Record_Number]));

-- qryDrillDownResults:
SELECT result.*
FROM result
WHERE (((result.Parent_Record)=[Forms]![frmExposureDrillDown]![Record Number]));

-- qryFindSpeciesName:
SELECT Min(species_latin_names.Spec_name) AS MinOfSpec_name
FROM species_latin_names
GROUP BY species_latin_names.Spec_num
HAVING (((species_latin_names.Spec_num)=[Forms]![frmTestDrillDown]![Species Number]));

-- qryResultsBed:
SELECT result.*
FROM result
WHERE (((result.Test_Record)=[Forms]![frmTestDrillDown]![Record Number]) AND ((result.Parent_Record)=[Forms]![frmExposureDrillDown]![Record Number]));

-- qryShowReferencesFromTest:
SELECT tblReferenceNumbers.Reference_Number
FROM tblReferenceNumbers
WHERE (((tblReferenceNumbers.Test_Number)=[Forms]![frmTestDrillDown]![Record Number]));

