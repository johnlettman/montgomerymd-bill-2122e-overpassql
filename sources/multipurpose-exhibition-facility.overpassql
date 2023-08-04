// 21-22E "Firearms - Weapons" 57-1(1)(I) multipurpose exhibition facility, such as a fairgrounds or conference center
/*
  OverpassQL GIS query to acquire 57-1(1)(I) location impacts of:
  Montgomery County, MD, USA Bill 21-22E "Firearms - Weapons"

  Authors:
  - John P. Lettman <the@johnlettman.com>
  - Maryland Shall Issue, Inc. <info@marylandshallissue.org>

  A collaboration to analyze the impacts of Bill 21-22E
  SEE ALSO: https://www.marylandshallissue.org/jmain/counselor-s-corner/317-moco-2122e-in-effect

  The data is from www.openstreetmap.org.
  The data is made available under ODbL.

  REFERENCE: Snippet of Montgomery County, MD Bill 21-22E
  URL: https://apps.montgomerycountymd.gov/ccllims/DownloadFilePage?FileName=2761_1_22629_Bill_21-22E_Signed_20221128.pdf

  3   57-1. Definitions.
  [... SNIP ...]
  34      Place of public assembly: A “place of public assembly” is:
  48          (I) multipurpose exhibition facility, such as a fairgrounds or
  49              conference center; or
*/

[out:json];
area["gnis:feature_id"="1712500"]->.montgomery;
(
    // Fairgrounds
    wr["name"~"fair\s*grounds?",i](area.montgomery);

    // Conference centers
    wr["amenity"="conference_center"](area.montgomery);
    wr["name"~"conference center", i](area.montgomery);
);

out geom;
>;
out skel qt;
