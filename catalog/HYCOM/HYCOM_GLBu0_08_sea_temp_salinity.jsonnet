local id = 'HYCOM/GLBu0_08/sea_temp_salinity';
local successor_id = 'HYCOM/sea_temp_salinity';
local subdir = 'HYCOM';

local ee_const = import 'earthengine_const.libsonnet';
local ee = import 'earthengine.libsonnet';
local spdx = import 'spdx.libsonnet';

local license = spdx.proprietary;

local basename = std.strReplace(id, '/', '_');
local successor_basename = std.strReplace(successor_id, '/', '_');
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
  title: 'HYCOM: Hybrid Coordinate Ocean Model, Water Temperature and Salinity [deprecated]',
  deprecated: true,
  'gee:type': ee_const.gee_type.image_collection,
  description: |||
    The Hybrid Coordinate Ocean Model (HYCOM) is a data-assimilative hybrid
    isopycnal-sigma-pressure (generalized) coordinate ocean model. The subset
    of HYCOM data hosted in EE contains the variables salinity, temperature,
    velocity, and elevation. They have been interpolated to a uniform
    0.08 degree lat/long grid between 80.48°S and 80.48°N. The salinity,
    temperature, and velocity variables have been interpolated to 40
    standard z-levels.

    The HYCOM Consortium, which includes the National Ocean Partnership
    Program (NOPP), is part of the U.S. Global Ocean Data Assimilation
    Experiment (GODAE).

    Funded by the National Ocean Partnership Program, the Office of Naval
    Research (ONR), and DoD High Performance Computing Modernization Program.
  |||,
  license: license.id,
  links: ee.standardLinks(subdir, id) + [
    ee.link.successor(
        successor_id, catalog_subdir_url + successor_basename + '.json'),
  ],
  keywords: [
    'hycom',
    'nopp',
    'ocean',
    'salinity',
    'sst',
    'water',
    'water_temp',
  ],
  providers: [
    ee.producer_provider('NOPP', 'https://hycom.org/'),
    ee.host_provider(self_ee_catalog_url),
  ],
  extent: ee.extent(-180.0, -80.48, 180.0, 80.48,
                    '1992-10-02T00:00:00Z', '2018-12-09T12:00:00Z'),
  summaries: {
    'gee:schema': [
      {
        name: 'experiment',
        description: 'Experiment number',
        type: ee_const.var_type.string,
      },
    ],
    gsd: [
      8905.6,
    ],
    'eo:bands': [
      {
        name: 'water_temp_0',
        description: 'Sea water temperature at a depth of 0m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_0',
        description: 'Sea water salinity, in practical salinity units, at a depth of 0m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_2',
        description: 'Sea water temperature at a depth of 2m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_2',
        description: 'Sea water salinity, in practical salinity units, at a depth of 2m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_4',
        description: 'Sea water temperature at a depth of 4m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_4',
        description: 'Sea water salinity, in practical salinity units, at a depth of 4m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_6',
        description: 'Sea water temperature at a depth of 6m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_6',
        description: 'Sea water salinity, in practical salinity units, at a depth of 6m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_8',
        description: 'Sea water temperature at a depth of 8m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_8',
        description: 'Sea water salinity, in practical salinity units, at a depth of 8m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_10',
        description: 'Sea water temperature at a depth of 10m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_10',
        description: 'Sea water salinity, in practical salinity units, at a depth of 10m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_12',
        description: 'Sea water temperature at a depth of 12m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_12',
        description: 'Sea water salinity, in practical salinity units, at a depth of 12m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_15',
        description: 'Sea water temperature at a depth of 15m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_15',
        description: 'Sea water salinity, in practical salinity units, at a depth of 15m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_20',
        description: 'Sea water temperature at a depth of 20m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_20',
        description: 'Sea water salinity, in practical salinity units, at a depth of 20m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_25',
        description: 'Sea water temperature at a depth of 25m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_25',
        description: 'Sea water salinity, in practical salinity units, at a depth of 25m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_30',
        description: 'Sea water temperature at a depth of 30m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_30',
        description: 'Sea water salinity, in practical salinity units, at a depth of 30m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_35',
        description: 'Sea water temperature at a depth of 35m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_35',
        description: 'Sea water salinity, in practical salinity units, at a depth of 35m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_40',
        description: 'Sea water temperature at a depth of 40m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_40',
        description: 'Sea water salinity, in practical salinity units, at a depth of 40m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_45',
        description: 'Sea water temperature at a depth of 45m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_45',
        description: 'Sea water salinity, in practical salinity units, at a depth of 45m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_50',
        description: 'Sea water temperature at a depth of 50m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_50',
        description: 'Sea water salinity, in practical salinity units, at a depth of 50m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_60',
        description: 'Sea water temperature at a depth of 60m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_60',
        description: 'Sea water salinity, in practical salinity units, at a depth of 60m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_70',
        description: 'Sea water temperature at a depth of 70m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_70',
        description: 'Sea water salinity, in practical salinity units, at a depth of 70m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_80',
        description: 'Sea water temperature at a depth of 80m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_80',
        description: 'Sea water salinity, in practical salinity units, at a depth of 80m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_90',
        description: 'Sea water temperature at a depth of 90m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_90',
        description: 'Sea water salinity, in practical salinity units, at a depth of 90m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_100',
        description: 'Sea water temperature at a depth of 100m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_100',
        description: 'Sea water salinity, in practical salinity units, at a depth of 100m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_125',
        description: 'Sea water temperature at a depth of 125m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_125',
        description: 'Sea water salinity, in practical salinity units, at a depth of 125m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_150',
        description: 'Sea water temperature at a depth of 150m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_150',
        description: 'Sea water salinity, in practical salinity units, at a depth of 150m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_200',
        description: 'Sea water temperature at a depth of 200m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_200',
        description: 'Sea water salinity, in practical salinity units, at a depth of 200m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_250',
        description: 'Sea water temperature at a depth of 250m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_250',
        description: 'Sea water salinity, in practical salinity units, at a depth of 250m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_300',
        description: 'Sea water temperature at a depth of 300m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_300',
        description: 'Sea water salinity, in practical salinity units, at a depth of 300m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_350',
        description: 'Sea water temperature at a depth of 350m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_350',
        description: 'Sea water salinity, in practical salinity units, at a depth of 350m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_400',
        description: 'Sea water temperature at a depth of 400m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_400',
        description: 'Sea water salinity, in practical salinity units, at a depth of 400m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_500',
        description: 'Sea water temperature at a depth of 500m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_500',
        description: 'Sea water salinity, in practical salinity units, at a depth of 500m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_600',
        description: 'Sea water temperature at a depth of 600m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_600',
        description: 'Sea water salinity, in practical salinity units, at a depth of 600m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_700',
        description: 'Sea water temperature at a depth of 700m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_700',
        description: 'Sea water salinity, in practical salinity units, at a depth of 700m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_800',
        description: 'Sea water temperature at a depth of 800m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_800',
        description: 'Sea water salinity, in practical salinity units, at a depth of 800m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_900',
        description: 'Sea water temperature at a depth of 900m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_900',
        description: 'Sea water salinity, in practical salinity units, at a depth of 900m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_1000',
        description: 'Sea water temperature at a depth of 1000m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_1000',
        description: 'Sea water salinity, in practical salinity units, at a depth of 1000m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_1250',
        description: 'Sea water temperature at a depth of 1250m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_1250',
        description: 'Sea water salinity, in practical salinity units, at a depth of 1250m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_1500',
        description: 'Sea water temperature at a depth of 1500m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_1500',
        description: 'Sea water salinity, in practical salinity units, at a depth of 1500m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_2000',
        description: 'Sea water temperature at a depth of 2000m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_2000',
        description: 'Sea water salinity, in practical salinity units, at a depth of 2000m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_2500',
        description: 'Sea water temperature at a depth of 2500m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_2500',
        description: 'Sea water salinity, in practical salinity units, at a depth of 2500m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_3000',
        description: 'Sea water temperature at a depth of 3000m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_3000',
        description: 'Sea water salinity, in practical salinity units, at a depth of 3000m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_4000',
        description: 'Sea water temperature at a depth of 4000m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_4000',
        description: 'Sea water salinity, in practical salinity units, at a depth of 4000m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'water_temp_5000',
        description: 'Sea water temperature at a depth of 5000m',
        'gee:units': '°C',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
      {
        name: 'salinity_5000',
        description: 'Sea water salinity, in practical salinity units, at a depth of 5000m',
        'gee:units': 'psu',
        'gee:scale': 0.001,
        'gee:offset': 20.0,
      },
    ],
    'gee:visualizations': [
      {
        display_name: 'Sea Water Temperature',
        lookat: {
          lat: 26.4,
          lon: -88.6,
          zoom: 1,
        },
        image_visualization: {
          band_vis: {
            min: [
              -20000.0,
            ],
            max: [
              15000.0,
            ],
            palette: [
              '000000',
              '005aff',
              '43c8c8',
              'fff700',
              'ff0000',
            ],
            bands: [
              'water_temp_0',
            ],
          },
        },
      },
    ],
    water_temp_0: {
      minimum: -32768.0,
      maximum: 32763.0,
      'gee:estimated_range': true,
    },
    salinity_0: {
      minimum: -20009.0,
      maximum: 32767.0,
      'gee:estimated_range': true,
    },
    water_temp_2: {
      minimum: -32768.0,
      maximum: 32755.0,
      'gee:estimated_range': true,
    },
    salinity_2: {
      minimum: -20002.0,
      maximum: 32767.0,
      'gee:estimated_range': true,
    },
    water_temp_4: {
      minimum: -32768.0,
      maximum: 32746.0,
      'gee:estimated_range': true,
    },
    salinity_4: {
      minimum: -20001.0,
      maximum: 32767.0,
      'gee:estimated_range': true,
    },
    water_temp_6: {
      minimum: -32768.0,
      maximum: 32742.0,
      'gee:estimated_range': true,
    },
    salinity_6: {
      minimum: -19991.0,
      maximum: 32767.0,
      'gee:estimated_range': true,
    },
    water_temp_8: {
      minimum: -32768.0,
      maximum: 32741.0,
      'gee:estimated_range': true,
    },
    salinity_8: {
      minimum: -19795.0,
      maximum: 32767.0,
      'gee:estimated_range': true,
    },
    water_temp_10: {
      minimum: -32768.0,
      maximum: 32738.0,
      'gee:estimated_range': true,
    },
    salinity_10: {
      minimum: -19624.0,
      maximum: 32767.0,
      'gee:estimated_range': true,
    },
    water_temp_12: {
      minimum: -32768.0,
      maximum: 32735.0,
      'gee:estimated_range': true,
    },
    salinity_12: {
      minimum: -19624.0,
      maximum: 32767.0,
      'gee:estimated_range': true,
    },
    water_temp_15: {
      minimum: -32768.0,
      maximum: 32763.0,
      'gee:estimated_range': true,
    },
    salinity_15: {
      minimum: -19624.0,
      maximum: 32767.0,
      'gee:estimated_range': true,
    },
    water_temp_20: {
      minimum: -32768.0,
      maximum: 32715.0,
      'gee:estimated_range': true,
    },
    salinity_20: {
      minimum: -18606.0,
      maximum: 32767.0,
      'gee:estimated_range': true,
    },
    water_temp_25: {
      minimum: -32768.0,
      maximum: 32737.0,
      'gee:estimated_range': true,
    },
    salinity_25: {
      minimum: -18131.0,
      maximum: 32767.0,
      'gee:estimated_range': true,
    },
    water_temp_30: {
      minimum: -32768.0,
      maximum: 32754.0,
      'gee:estimated_range': true,
    },
    salinity_30: {
      minimum: -17892.0,
      maximum: 32767.0,
      'gee:estimated_range': true,
    },
    water_temp_35: {
      minimum: -32768.0,
      maximum: 32754.0,
      'gee:estimated_range': true,
    },
    salinity_35: {
      minimum: -17874.0,
      maximum: 32767.0,
      'gee:estimated_range': true,
    },
    water_temp_40: {
      minimum: -32768.0,
      maximum: 32674.0,
      'gee:estimated_range': true,
    },
    salinity_40: {
      minimum: -17831.0,
      maximum: 32767.0,
      'gee:estimated_range': true,
    },
    water_temp_45: {
      minimum: -32768.0,
      maximum: 32701.0,
      'gee:estimated_range': true,
    },
    salinity_45: {
      minimum: -17831.0,
      maximum: 32767.0,
      'gee:estimated_range': true,
    },
    water_temp_50: {
      minimum: -32768.0,
      maximum: 32237.0,
      'gee:estimated_range': true,
    },
    salinity_50: {
      minimum: -17738.0,
      maximum: 32767.0,
      'gee:estimated_range': true,
    },
    water_temp_60: {
      minimum: -32768.0,
      maximum: 32630.0,
      'gee:estimated_range': true,
    },
    salinity_60: {
      minimum: -17733.0,
      maximum: 32767.0,
      'gee:estimated_range': true,
    },
    water_temp_70: {
      minimum: -32768.0,
      maximum: 23172.0,
      'gee:estimated_range': true,
    },
    salinity_70: {
      minimum: -17423.0,
      maximum: 24303.0,
      'gee:estimated_range': true,
    },
    water_temp_80: {
      minimum: -32768.0,
      maximum: 27875.0,
      'gee:estimated_range': true,
    },
    salinity_80: {
      minimum: -17326.0,
      maximum: 25320.0,
      'gee:estimated_range': true,
    },
    water_temp_90: {
      minimum: -32768.0,
      maximum: 32393.0,
      'gee:estimated_range': true,
    },
    salinity_90: {
      minimum: -16787.0,
      maximum: 26604.0,
      'gee:estimated_range': true,
    },
    water_temp_100: {
      minimum: -32768.0,
      maximum: 31847.0,
      'gee:estimated_range': true,
    },
    salinity_100: {
      minimum: -16717.0,
      maximum: 27143.0,
      'gee:estimated_range': true,
    },
    water_temp_125: {
      minimum: -32768.0,
      maximum: 31469.0,
      'gee:estimated_range': true,
    },
    salinity_125: {
      minimum: -14896.0,
      maximum: 30131.0,
      'gee:estimated_range': true,
    },
    water_temp_150: {
      minimum: -32768.0,
      maximum: 31335.0,
      'gee:estimated_range': true,
    },
    salinity_150: {
      minimum: -14712.0,
      maximum: 31215.0,
      'gee:estimated_range': true,
    },
    water_temp_200: {
      minimum: -32768.0,
      maximum: 30029.0,
      'gee:estimated_range': true,
    },
    salinity_200: {
      minimum: -14567.0,
      maximum: 30979.0,
      'gee:estimated_range': true,
    },
    water_temp_250: {
      minimum: -32768.0,
      maximum: 21629.0,
      'gee:estimated_range': true,
    },
    salinity_250: {
      minimum: -13198.0,
      maximum: 27945.0,
      'gee:estimated_range': true,
    },
    water_temp_300: {
      minimum: -32768.0,
      maximum: 22796.0,
      'gee:estimated_range': true,
    },
    salinity_300: {
      minimum: -220.0,
      maximum: 27712.0,
      'gee:estimated_range': true,
    },
    water_temp_350: {
      minimum: -32768.0,
      maximum: 18501.0,
      'gee:estimated_range': true,
    },
    salinity_350: {
      minimum: -136.0,
      maximum: 21866.0,
      'gee:estimated_range': true,
    },
    water_temp_400: {
      minimum: -32768.0,
      maximum: 23875.0,
      'gee:estimated_range': true,
    },
    salinity_400: {
      minimum: 0.0,
      maximum: 24711.0,
      'gee:estimated_range': true,
    },
    water_temp_500: {
      minimum: -32768.0,
      maximum: 18663.0,
      'gee:estimated_range': true,
    },
    salinity_500: {
      minimum: 0.0,
      maximum: 24929.0,
      'gee:estimated_range': true,
    },
    water_temp_600: {
      minimum: -32768.0,
      maximum: 14251.0,
      'gee:estimated_range': true,
    },
    salinity_600: {
      minimum: 0.0,
      maximum: 24128.0,
      'gee:estimated_range': true,
    },
    water_temp_700: {
      minimum: -32768.0,
      maximum: 11300.0,
      'gee:estimated_range': true,
    },
    salinity_700: {
      minimum: 0.0,
      maximum: 22350.0,
      'gee:estimated_range': true,
    },
    water_temp_800: {
      minimum: -32768.0,
      maximum: 8630.0,
      'gee:estimated_range': true,
    },
    salinity_800: {
      minimum: 0.0,
      maximum: 21959.0,
      'gee:estimated_range': true,
    },
    water_temp_900: {
      minimum: -32768.0,
      maximum: 9544.0,
      'gee:estimated_range': true,
    },
    salinity_900: {
      minimum: 0.0,
      maximum: 21965.0,
      'gee:estimated_range': true,
    },
    water_temp_1000: {
      minimum: -32768.0,
      maximum: 7050.0,
      'gee:estimated_range': true,
    },
    salinity_1000: {
      minimum: 0.0,
      maximum: 21982.0,
      'gee:estimated_range': true,
    },
    water_temp_1250: {
      minimum: -32768.0,
      maximum: 8837.0,
      'gee:estimated_range': true,
    },
    salinity_1250: {
      minimum: 0.0,
      maximum: 22075.0,
      'gee:estimated_range': true,
    },
    water_temp_1500: {
      minimum: -23069.0,
      maximum: 12933.0,
      'gee:estimated_range': true,
    },
    salinity_1500: {
      minimum: 0.0,
      maximum: 20937.0,
      'gee:estimated_range': true,
    },
    water_temp_2000: {
      minimum: -25670.0,
      maximum: 4925.0,
      'gee:estimated_range': true,
    },
    salinity_2000: {
      minimum: 0.0,
      maximum: 20936.0,
      'gee:estimated_range': true,
    },
    water_temp_2500: {
      minimum: -32768.0,
      maximum: 0.0,
      'gee:estimated_range': true,
    },
    salinity_2500: {
      minimum: 0.0,
      maximum: 19073.0,
      'gee:estimated_range': true,
    },
    water_temp_3000: {
      minimum: -22062.0,
      maximum: 0.0,
      'gee:estimated_range': true,
    },
    salinity_3000: {
      minimum: 0.0,
      maximum: 19057.0,
      'gee:estimated_range': true,
    },
    water_temp_4000: {
      minimum: -21564.0,
      maximum: 0.0,
      'gee:estimated_range': true,
    },
    salinity_4000: {
      minimum: 0.0,
      maximum: 19012.0,
      'gee:estimated_range': true,
    },
    water_temp_5000: {
      minimum: -21469.0,
      maximum: 0.0,
      'gee:estimated_range': true,
    },
    salinity_5000: {
      minimum: 0.0,
      maximum: 15583.0,
      'gee:estimated_range': true,
    },
  },
  'sci:citation': |||
    J. A. Cummings and O. M. Smedstad. 2013: Variational Data Assimilation for
    the Global Ocean. Data Assimilation for Atmospheric, Oceanic and Hydrologic
    Applications vol II, chapter 13, 303-343.
  |||,
  'gee:interval': {
    type: 'cadence',
    unit: 'day',
    interval: 1,
  },
  'gee:terms_of_use': 'This dataset is freely available with no restrictions.',
  version: 'Unknown',
}