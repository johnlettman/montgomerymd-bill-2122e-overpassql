// Montgomery County, MD, USA
/*
  OverpassQL GIS query to acquire the boundaries of Montgomery County, MD, USA.

  Authors:
  - John P. Lettman <the@johnlettman.com>
  - Maryland Shall Issue, Inc. <info@marylandshallissue.org>

  A collaboration to analyze the impacts of Bill 21-22E
  SEE ALSO: https://www.marylandshallissue.org/jmain/counselor-s-corner/317-moco-2122e-in-effect

  The data is from www.openstreetmap.org.
  The data is made available under ODbL.

  This query uses the Geographic Names Information System developed by the
  U.S. Geological Survey's National Geospatial Program.

  Summary report for feature #1712500 as follows.

  Feature ID:     1712500
  Name:           Montgomery County
  Class:          Civil
  Feature Code:   County
  Location:       Montgomery County - Maryland
  Citation
    Source Type:        Text
    Reference:          US
    Originator:         U.S. Census Bureau
    Distribution Date:  January 1, 2002
    Title:              Census County/Townships, Census Designated Places (CDP)
                        and incorporated cities
    Original Citation:  Census County/Townships, CDP's and incorporated cities -
                        Bureau of Census, Geography Division, coordinates are
                        located at the centroid.


  REFERENCE: https://edits.nationalmap.gov/apps/gaz-domestic/public/search/names
*/

[out:json][timeout:25];
(
    relation["gnis:feature_id"="1712500"];
);
out body;
>;
out skel qt;
