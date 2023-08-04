OVERPASSQLRUN = ../overpassql-run/node_modules/.bin/ts-node ../overpassql-run/src/index.ts

SOURCES_DIR = sources
OUTPUT_DIR  = output

SOURCES = $(wildcard $(SOURCES_DIR)/*.overpassql)
GEOJSON = $(patsubst $(SOURCES_DIR)/%.overpassql,$(OUTPUT_DIR)/%.geojson,$(SOURCES))
GPX     = $(patsubst $(SOURCES_DIR)/%.overpassql,$(OUTPUT_DIR)/%.gpx,$(SOURCES))
KML     = $(patsubst $(SOURCES_DIR)/%.overpassql,$(OUTPUT_DIR)/%.kml,$(SOURCES))
OSMCSV  = $(patsubst $(SOURCES_DIR)/%.overpassql,$(OUTPUT_DIR)/%.osm.csv,$(SOURCES))
OSMJSON = $(patsubst $(SOURCES_DIR)/%.overpassql,$(OUTPUT_DIR)/%.osm.json,$(SOURCES))
OSMXML  = $(patsubst $(SOURCES_DIR)/%.overpassql,$(OUTPUT_DIR)/%.osm.xml,$(SOURCES))

.PHONY: all clean force
all: geojson gpx kml osmcsv osmjson osmxml
clean: clean-geojson clean-gpx clean-kml clean-osmcsv clean-osmjson clean-osmxml
force: clean all

#   ___            _ ___  ___  _  _
#  / __|___ ___ _ | / __|/ _ \| \| |
# | (_ / -_) _ \ || \__ \ (_) | .` |
#  \___\___\___/\__/|___/\___/|_|\_|
.PHONY: geojson force-geojson clean-geojson

$(OUTPUT_DIR)/%.geojson: $(SOURCES_DIR)/%.overpassql
	$(OVERPASSQLRUN) -m -f geojson $< $@

geojson: $(GEOJSON)
force-geojson: clean-geojson geojson
clean-geojson:
	rm -f $(GEOJSON)

#   ___ _____  __
#  / __| _ \ \/ /
# | (_ |  _/>  <
#  \___|_| /_/\_
.PHONY: gpx force-gpx clean-gpx

$(OUTPUT_DIR)/%.gpx: $(SOURCES_DIR)/%.overpassql
	$(OVERPASSQLRUN) -m -f gpx $< $@

gpx: $(GPX)
force-gpx: clean-gpx gpx
clean-gpx:
	rm -f $(GPX)

#  _  ____  __ _
# | |/ /  \/  | |
# | ' <| |\/| | |__
# |_|\_\_|  |_|____|
.PHONY: kml force-kml clean-kml

$(OUTPUT_DIR)/%.kml: $(SOURCES_DIR)/%.overpassql
	$(OVERPASSQLRUN) -m -f kml $< $@

kml: $(KML)
force-osmcsv: clean-kml kml
clean-kml:
	rm -f $(KML)

#   ___  ___ __  __    ___ _____   __
#  / _ \/ __|  \/  |  / __/ __\ \ / /
# | (_) \__ \ |\/| | | (__\__ \\ V /
#  \___/|___/_|  |_|  \___|___/ \_/
.PHONY: osmcsv force-osmcsv clean-osmcsv

$(OUTPUT_DIR)/%.osm.csv: $(SOURCES_DIR)/%.overpassql
	$(OVERPASSQLRUN) -m -f osmcsv $< $@

osmcsv: $(OSMCSV)
force-osmcsv: clean-osmcsv osmcsv
clean-osmcsv:
	rm -f $(OSMCSV)

#   ___  ___ __  __      _ ___  ___  _  _
#  / _ \/ __|  \/  |  _ | / __|/ _ \| \| |
# | (_) \__ \ |\/| | | || \__ \ (_) | .` |
#  \___/|___/_|  |_|  \__/|___/\___/|_|\_|
.PHONY: osmjson force-osmjson clean-osmjson

$(OUTPUT_DIR)/%.osm.json: $(SOURCES_DIR)/%.overpassql
	$(OVERPASSQLRUN) -m -f osmjson $< $@

osmjson: $(OSMJSON)
force-osmjson: clean-osmjson osmjson
clean-osmjson:
	rm -f $(OSMJSON)

#   ___  ___ __  __  __  ____  __ _
#  / _ \/ __|  \/  | \ \/ /  \/  | |
# | (_) \__ \ |\/| |  >  <| |\/| | |__
#  \___/|___/_|  |_| /_/\_\_|  |_|____|
.PHONY: osmxml force-osmxml clean-osmxml

$(OUTPUT_DIR)/%.osm.xml: $(SOURCES_DIR)/%.overpassql
	$(OVERPASSQLRUN) -m -f osmxml $< $@

osmxml: $(OSMXML)
force-osmxml: clean-osmxml osmxml
clean-osmxml:
	rm -f $(OSMXML)
