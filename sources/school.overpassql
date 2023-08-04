// 21-22E "Firearms - Weapons" 57-1(1)(C) school
/*
  OverpassQL GIS query to acquire 57-1(1)(C) location impacts of:
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
  35      (1) a [[place where the public may assemble, whether the place is]]
  36          publicly or privately owned:[[, including a]]
  [... SNIP ...]
  39          (C) school;
*/

[out:json];
area["gnis:feature_id"="1712500"]->.montgomery;
(
    // Kindergarten
    wr["amenity"~"kin[dt]ergar[dt]en"](area.montgomery);
    wr["building"~"kin[dt]ergar[dt]en"](area.montgomery);

    // Traditional education
    wr["amenity"="school"](area.montgomery);
    wr["amenity"="university"](area.montgomery);
    wr["amenity"="college"](area.montgomery);
    wr["building"="school"](area.montgomery);
    wr["building"="university"](area.montgomery);
    wr["building"="college"](area.montgomery);

    // Research institutes
    wr["amenity"="research_institute"](area.montgomery);
    wr["building"="research_institute"](area.montgomery);
);

out geom;
>;
out skel qt;
