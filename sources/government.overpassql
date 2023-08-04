// 21-22E "Firearms - Weapons" 57-1(1)(E) government building, including any place owned by or under the control of the County
/*
  OverpassQL GIS query to acquire 57-1(1)(E) location impacts of:
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
  [... SNIP ...]
  51      (2) government building, including any place owned by or under the
  52      control of the County;
*/

[out:json];
area["gnis:feature_id"="1712500"]->.montgomery;
(
    // Public transit
    wr["railway"="facility"](area.montgomery);
    wr["railway"="stop"](area.montgomery);
    wr["railway"="station"](area.montgomery);
    wr["building"="train_station"](area.montgomery);
    wr["amenity"="bus_station"](area.montgomery);

    // Government campuses
    wr["boundary"="protected_area"](area.montgomery);

    // Federal government structures
    wr["name"~"national institute|u\.?s\.? department", i](area.montgomery);
    wr["amenity"="post_office"](area.montgomery);

    // General government structures
    wr["amenity"="townhall"](area.montgomery);
    wr["amenity"="courthouse"](area.montgomery);
    wr["office"="government"](area.montgomery);
    wr["building"="government"](area.montgomery);
    wr["government"](area.montgomery);

    // Emergency services
    wr["amenity"="fire_station"](area.montgomery);
    wr["amenity"="police"](area.montgomery);

    // Prisons
    wr["amenity"="prison"](area.montgomery);
    wr["amenity"="jail"](area.montgomery);

    // Military
    wr["landuse"="military"](area.montgomery);

    // Civil infrastructure
    wr["man_made"="wastewater_plant"](area.montgomery);
    wr["man_made"="water_works"](area.montgomery);
);

out geom;
>;
out skel qt;
