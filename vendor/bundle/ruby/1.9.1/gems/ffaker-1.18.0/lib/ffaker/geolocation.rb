module Faker
  module Geolocation
    extend ModuleUtils
    extend self

    def lat
      LATLNG.rand[0]
    end

    def lng
      LATLNG.rand[1]
    end

    LATLNG = k [[41.022921,-73.667595], [41.017643,-73.769264], [40.89505,-73.83582], [41.018461,-73.66616],
      [40.6665875097692,-73.8830092325694], [40.6784867492198,-73.9716387729985], [40.5998084142575,-73.9385565185842],
      [40.6175673160943,-74.0002511295821], [40.7451545655034,-73.971855164776], [40.7143394939935,-73.9783896644132],
      [40.7916523500249,-73.9693478828185], [40.8005590858048,-73.9473684707957], [40.7292057951864,-73.7555431517841],
      [40.7532199291845,-73.8842977517553], [40.7490546706085,-73.9187706945134], [40.6609944585817,-73.8454648940358],
      [38.9962071932467,-77.0898681997577], [38.9614005154765,-77.0739996811784], [38.9381545320739,-77.0656875352079],
      [39.0788984258721,-77.0500853418371], [40.8377346033077,-73.8618025934729], [40.8377346033077,-73.8618025934729],
      [40.8831107806302,-73.9212453413708], [40.9077802515069,-73.9025768857695], [36.1936372347,-115.068968492],
      [36.2345447488,-115.327274645], [36.1257785585,-115.08848819], [36.0150030591,-115.120716573], [41.5205,-81.587],
      [41.491529,-81.611008], [41.4811,-81.9136], [41.5244,-81.5531], [38.5241394042969,-90.3121643066406],
      [38.4685363769531,-90.3760452270508], [38.7077140808105,-90.2698593139648], [38.7953453063965,-90.2058792114258],
      [33.5775667696072,-112.21954995412], [33.4136301699617,-112.605812600303], [33.3732084677927,-111.602125919385],
      [33.4280828890754,-112.496547310057], [40.0677174866262,-75.0764604391247], [39.9760149034563,-75.1786003814711],
      [39.9871631180866,-75.1862338204704], [39.9847861520773,-75.110396933127], [26.1180992126465,-80.149299621582],
      [25.4804286236799,-80.4256357381565], [26.1793003082275,-80.1410980224609], [26.5322723388672,-80.1300048828125],
      [47.685714288367,-122.340967372417], [47.6993431274679,-122.395610510952], [47.7553943974153,-122.305764516646],
      [47.5173276931226,-122.275152683751], [40.78595,-73.196244], [40.927955,-73.048076], [41.022872,-72.204989],
      [40.855153,-72.572405], [34.101011924908,-118.064638782714], [34.2430955947492,-118.427610513239],
      [34.3823767402857,-118.550562688364], [33.8256050190507,-118.281161297494], [37.5758033375583,-122.012044535507],
      [37.8768587606888,-122.078250641083], [37.6859990796181,-122.094516147761], [37.4660979087165,-121.900873639257],
      [41.77117,-87.888795], [41.900425,-87.624262], [41.737173,-87.869998]]

    def boxed_coords(upper_left, lower_right)
      latitude_range = [upper_left[0], lower_right[0]].sort
      longitude_range = [upper_left[1], lower_right[1]].sort

      latitude = latitude_range[0] + rand() * (latitude_range[1] - latitude_range[0])
      longitude = longitude_range[0] + rand() * (longitude_range[1] - longitude_range[0])

      [latitude, longitude]
    end
  end
end
