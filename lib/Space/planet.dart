class Planet {
  final String name;
  final String image;
  final String subtitle;
  final String about;
  final Map<String, String> stats;

  const Planet({
    required this.name,
    required this.image,
    required this.subtitle,
    required this.about,
    required this.stats,
  });
}

const planets = [
  Planet(
    name: 'Earth',
    image: 'assets/images/earth.png',
    subtitle: 'Earth: Our Blue Marble',
    about:
    'Earth is the only known planet in the universe that supports life. '
        'Its unique combination of factors, including liquid water, a breathable '
        'atmosphere, and a suitable distance from the Sun, has created the ideal '
        'conditions for the development of complex organisms. Earth\'s magnetic '
        'field protects it from harmful solar radiation, and its atmosphere '
        'helps to regulate temperature and weather patterns.',
    stats: {
      'Distance from Sun (km)': '149598026',
      'Length of Day (hours)': '23.93',
      'Orbital Period (Earth years)': '1',
      'Radius (km)': '6371',
      'Mass (kg)': '5.972 × 10²⁴',
      'Gravity (m/s²)': '9.81',
      'Surface Area (km²)': '5.10 × 10⁸',
    },
  ),
  Planet(
    name: 'Mercury',
    image: 'assets/images/mercury.png',
    subtitle: 'Mercury: The Swift Planet',
    about:
    'Mercury is the smallest planet in our solar system and the closest '
        'to the Sun. It has a heavily cratered surface and almost no '
        'atmosphere, so temperatures swing dramatically between day and night.',
    stats: {
      'Distance from Sun (km)': '57909050',
      'Length of Day (hours)': '4222.6',
      'Orbital Period (Earth years)': '0.24',
      'Radius (km)': '2439.7',
      'Mass (kg)': '3.30 × 10²³',
      'Gravity (m/s²)': '3.7',
      'Surface Area (km²)': '7.48 × 10⁷',
    },
  ),
  Planet(
    name: 'Sun',
    image: 'assets/images/sun2.png',
    subtitle: 'Sun: The Swift Planet',
    about:
    'Sun is the smallest planet in our solar system and the closest '
        'to the Sun. It has a heavily cratered surface and almost no '
        'atmosphere, so temperatures swing dramatically between day and night.',
    stats: {
      'Distance from Sun (km)': '57909050',
      'Length of Day (hours)': '4222.6',
      'Orbital Period (Earth years)': '0.24',
      'Radius (km)': '2439.7',
      'Mass (kg)': '3.30 × 10²³',
      'Gravity (m/s²)': '3.7',
      'Surface Area (km²)': '7.48 × 10⁷',
    },
  ),
  Planet(
    name: 'Jupiter',
    image: 'assets/images/jupiter.png',
    subtitle: 'Jupiter: The Swift Planet',
    about:
    'Jupiter is the smallest planet in our solar system and the closest '
        'to the Sun. It has a heavily cratered surface and almost no '
        'atmosphere, so temperatures swing dramatically between day and night.',
    stats: {
      'Distance from Sun (km)': '57909050',
      'Length of Day (hours)': '4222.6',
      'Orbital Period (Earth years)': '0.24',
      'Radius (km)': '2439.7',
      'Mass (kg)': '3.30 × 10²³',
      'Gravity (m/s²)': '3.7',
      'Surface Area (km²)': '7.48 × 10⁷',
    },
  ),
  Planet(
    name: 'Neptune',
    image: 'assets/images/neptune.png',
    subtitle: 'Neptune: The Swift Planet',
    about:
    'Neptune is the smallest planet in our solar system and the closest '
        'to the Sun. It has a heavily cratered surface and almost no '
        'atmosphere, so temperatures swing dramatically between day and night.',
    stats: {
      'Distance from Sun (km)': '57909050',
      'Length of Day (hours)': '4222.6',
      'Orbital Period (Earth years)': '0.24',
      'Radius (km)': '2439.7',
      'Mass (kg)': '3.30 × 10²³',
      'Gravity (m/s²)': '3.7',
      'Surface Area (km²)': '7.48 × 10⁷',
    },
  ),
  Planet(
    name: 'Uranus',
    image: 'assets/images/uranus.png',
    subtitle: 'Uranus: The Swift Planet',
    about:
    'Uranus is the smallest planet in our solar system and the closest '
        'to the Sun. It has a heavily cratered surface and almost no '
        'atmosphere, so temperatures swing dramatically between day and night.',
    stats: {
      'Distance from Sun (km)': '57909050',
      'Length of Day (hours)': '4222.6',
      'Orbital Period (Earth years)': '0.24',
      'Radius (km)': '2439.7',
      'Mass (kg)': '3.30 × 10²³',
      'Gravity (m/s²)': '3.7',
      'Surface Area (km²)': '7.48 × 10⁷',
    },
  ),
  Planet(
    name: 'Mars',
    image: 'assets/images/mars.png',
    subtitle: 'Mars: The Swift Planet',
    about:
    'Mars is the smallest planet in our solar system and the closest '
        'to the Sun. It has a heavily cratered surface and almost no '
        'atmosphere, so temperatures swing dramatically between day and night.',
    stats: {
      'Distance from Sun (km)': '57909050',
      'Length of Day (hours)': '4222.6',
      'Orbital Period (Earth years)': '0.24',
      'Radius (km)': '2439.7',
      'Mass (kg)': '3.30 × 10²³',
      'Gravity (m/s²)': '3.7',
      'Surface Area (km²)': '7.48 × 10⁷',
    },
  ),
  Planet(
    name: 'Saturn',
    image: 'assets/images/saturn.png',
    subtitle: 'Saturn: The Swift Planet',
    about:
    'Saturn is the smallest planet in our solar system and the closest '
        'to the Sun. It has a heavily cratered surface and almost no '
        'atmosphere, so temperatures swing dramatically between day and night.',
    stats: {
      'Distance from Sun (km)': '57909050',
      'Length of Day (hours)': '4222.6',
      'Orbital Period (Earth years)': '0.24',
      'Radius (km)': '2439.7',
      'Mass (kg)': '3.30 × 10²³',
      'Gravity (m/s²)': '3.7',
      'Surface Area (km²)': '7.48 × 10⁷',
    },
  ),
  Planet(
    name: 'Venus',
    image: 'assets/images/venus.png',
    subtitle: 'Venus: The Swift Planet',
    about:
    'Venus is the smallest planet in our solar system and the closest '
        'to the Sun. It has a heavily cratered surface and almost no '
        'atmosphere, so temperatures swing dramatically between day and night.',
    stats: {
      'Distance from Sun (km)': '57909050',
      'Length of Day (hours)': '4222.6',
      'Orbital Period (Earth years)': '0.24',
      'Radius (km)': '2439.7',
      'Mass (kg)': '3.30 × 10²³',
      'Gravity (m/s²)': '3.7',
      'Surface Area (km²)': '7.48 × 10⁷',
    },
  ),
];