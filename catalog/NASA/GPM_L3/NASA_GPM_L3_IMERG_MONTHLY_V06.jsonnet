local id = 'NASA/GPM_L3/IMERG_MONTHLY_V06';
local subdir = 'NASA/GPM_L3';

local ee_const = import 'earthengine_const.libsonnet';
local ee = import 'earthengine.libsonnet';
local spdx = import 'spdx.libsonnet';

local license = spdx.proprietary;

local basename = std.strReplace(id, '/', '_');
local base_filename = basename + '.json';
local self_ee_catalog_url = ee_const.ee_catalog_url + basename;
local catalog_subdir_url = ee_const.catalog_base + subdir + '/';
local parent_url = catalog_subdir_url + 'catalog.json';
local self_url = catalog_subdir_url + base_filename;

{
  stac_version: ee_const.stac_version,
  type: ee_const.stac_type.collection,
  stac_extensions: [
    ee_const.ext_eo,
    ee_const.ext_sci,
    ee_const.ext_ver,
  ],
  id: id,
  title: 'GPM: Monthly Global Precipitation Measurement (GPM) v6',
  version: 'V06',
  'gee:type': ee_const.gee_type.image_collection,
  description: |||
    IMERG-Final version "06" stopped being produced in September, 2021.
    Version "07" is expected to be released in September 2022

    Global Precipitation Measurement (GPM) is an international
    satellite mission to provide next-generation observations of
    rain and snow worldwide every three hours. The Integrated Multi-satellitE
    Retrievals for GPM (IMERG) is the unified algorithm that provides
    rainfall estimates combining data from all passive-microwave
    instruments in the GPM Constellation.

    This algorithm is intended to intercalibrate, merge, and interpolate
    all satellite microwave precipitation estimates, together with
    microwave-calibrated infrared (IR) satellite estimates, precipitation
    gauge analyses, and potentially other precipitation estimators at fine
    time and space scales for the TRMM and GPM eras over the entire globe.
    The system is run several times for each observation time, first
    giving a quick estimate and successively providing better estimates
    as more data arrive. The final step uses monthly gauge data to
    create research-level products. See [IMERG Technical Documentation](https://pmm.nasa.gov/sites/default/files/document_files/IMERG_doc.pdf)
    for more details on the algorithm.

    Documentation:
    * [Algorithm Theoretical Basis Document](https://docserver.gesdisc.eosdis.nasa.gov/public/project/GPM/IMERG_ATBD_V06.pdf)

    * [IMERG Quality Index](https://docserver.gesdisc.eosdis.nasa.gov/public/project/GPM/IMERGV06_QI.pdf)

    * [Caveats for IMERG extension into TRMM era](https://docserver.gesdisc.eosdis.nasa.gov/public/project/GPM/IMERGV06_TRMMera-caveats.pdf)

    * [IMERG Technical Documentation](https://docserver.gesdisc.eosdis.nasa.gov/public/project/GPM/IMERG_doc.06.pdf)

    * [Release notes; New Morphing algorithm](https://docserver.gesdisc.eosdis.nasa.gov/public/project/GPM/MorphingInV06IMERG.pdf)

    * [Remote-Sensing Reflectance](https://gpm1.gesdisc.eosdis.nasa.gov/data/doc/README.GPM.pdf)

    * [Anomalies](ftp://gpmweb2.pps.eosdis.nasa.gov/tsdis/AB/docs/gpm_anomalous.html)

    This collection contains data from
    [GPM_3IMERGM_06](https://disc.gsfc.nasa.gov/datasets/GPM_3IMERGM_V06/summary)
  |||,
  license: license.id,
  links: ee.standardLinks(subdir, id) + [
    {
      rel: 'cite-as',
      href: 'https://doi.org/10.5067/GPM/IMERG/3B-MONTH/06',
    },
  ],
  keywords: [
    'climate',
    'geophysical',
    'gpm',
    'imerg',
    'jaxa',
    'monthly',
    'nasa',
    'precipitation',
    'weather',
  ],
  providers: [
    ee.producer_provider('NASA GES DISC at NASA Goddard Space Flight Center', 'https://doi.org/10.5067/GPM/IMERG/3B-MONTH/06'),
    ee.host_provider(self_ee_catalog_url),
  ],
  extent: ee.extent_global('2000-06-01T00:00:00Z', '2021-09-01T00:00:00Z'),
  summaries: {
    gsd: [
      11132.0,
    ],
    'eo:bands': [
      {
        name: 'gaugeRelativeWeighting',
        description: 'Weighting of gauge precipitation relative to the multi-satellite precipitation',
        'gee:units': '%',
      },
      {
        name: 'precipitation',
        description: 'Merged satellite-gauge precipitation estimate',
        'gee:units': 'mm/hr',
      },
      {
        name: 'precipitationQualityIndex',
        description: 'Quality Index for precipitation field',
        'gee:units': 'Equivalent gauges per 2.5 degree box',
      },
      {
        name: 'probabilityLiquidPrecipitation',
        description: 'Accumulation-weighted probability of liquid precipitation phase',
        'gee:units': '%',
      },
      {
        name: 'randomError',
        description: 'Random error for merged satellite-gauge precipitation',
        'gee:units': 'mm/hr',
      },
    ],
    'gee:visualizations': [
      {
        display_name: 'Precipitation',
        lookat: {
          lat: 26.12,
          lon: -90.7,
          zoom: 2,
        },
        image_visualization: {
          band_vis: {
            min: [
              0.0,
            ],
            max: [
              1.0,
            ],
            bands: [
              'precipitation',
            ],
          },
        },
      },
    ],
  },
  'sci:doi': '10.5067/GPM/IMERG/3B-MONTH/06',
  'sci:citation': |||
    Huffman, G.J., E.F. Stocker, D.T. Bolvin, E.J. Nelkin, Jackson Tan (2019),
    GPM IMERG Final Precipitation L3 1 month 0.1 degree x 0.1 degree V06,
    Greenbelt, MD, Goddard Earth Sciences Data and Information Services Center
    (GES DISC), Accessed: [Data Access Date], 10.5067/GPM/IMERG/3B-MONTH/06
  |||,
  'gee:interval': {
    type: 'cadence',
    unit: 'month',
    interval: 1,
  },
  'gee:terms_of_use': 'sAll NASA-produced data from the GPM mission is made\nfreely available for the public to use.',
}