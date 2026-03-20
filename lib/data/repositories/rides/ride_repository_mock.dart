import '../../../model/ride/ride.dart';
import '../location/location_repository.dart';
import './ride_repository.dart';
import '../../../model/user/user.dart';

class RideRepositoryMock implements RideRepository {
  final LocationRepository locationRepository;

  RideRepositoryMock(this.locationRepository);

  List<User> fakeUsers = [
    User(
      firstName: "Alice",
      lastName: "Dupont",
      email: "alice.dupont@example.com",
      phone: "+33 612345678",
      profilePicture: "https://randomuser.me/api/portraits/women/1.jpg",
      verifiedProfile: true,
    ),
    User(
      firstName: "Bob",
      lastName: "Smith",
      email: "bob.smith@example.com",
      phone: "+44 789456123",
      profilePicture: "https://randomuser.me/api/portraits/men/2.jpg",
      verifiedProfile: false,
    ),
    User(
      firstName: "Charlie",
      lastName: "Martin",
      email: "charlie.martin@example.com",
      phone: "+33 674839201",
      profilePicture: "https://randomuser.me/api/portraits/men/3.jpg",
      verifiedProfile: true,
    ),
    User(
      firstName: "Diane",
      lastName: "Lemoine",
      email: "diane.lemoine@example.com",
      phone: "+44 741258963",
      profilePicture: "https://randomuser.me/api/portraits/women/4.jpg",
      verifiedProfile: true,
    ),
    User(
      firstName: "Ethan",
      lastName: "Brown",
      email: "ethan.brown@example.com",
      phone: "+44 785412369",
      profilePicture: "https://randomuser.me/api/portraits/men/5.jpg",
      verifiedProfile: false,
    ),
    User(
      firstName: "Fanny",
      lastName: "Durand",
      email: "fanny.durand@example.com",
      phone: "+33 675839201",
      profilePicture: "https://randomuser.me/api/portraits/women/6.jpg",
      verifiedProfile: true,
    ),
  ];
  

  @override
  List<Ride> fecthRides() {
    final location = locationRepository.fetchLocation();

    return [
      Ride(
        departureLocation: location[0], // London
        departureDate: DateTime.now().add(Duration(hours: 3)),
        arrivalLocation: location[19], // Paris
        arrivalDateTime: DateTime.now().add(Duration(hours: 8)),
        driver: fakeUsers[0],
        availableSeats: 2,
        pricePerSeat: 25.0,
      ),

      Ride(
        departureLocation: location[0], // London
        departureDate: DateTime.now().add(Duration(hours: 10)),
        arrivalLocation: location[19], // Paris
        arrivalDateTime: DateTime.now().add(Duration(hours: 9)),
        driver: fakeUsers[1],
        availableSeats: 1,
        pricePerSeat: 30.0,
      ),

      Ride(
        departureLocation: location[2], // Birmingham
        departureDate: DateTime.now().add(Duration(days: 1)),
        arrivalLocation: location[22], // Toulouse
        arrivalDateTime: DateTime.now().add(Duration(days: 1, hours: 4)),
        driver: fakeUsers[2],
        availableSeats: 2,
        pricePerSeat: 22.5,
      ),

      Ride(
        departureLocation: location[3], // Liverpool
        departureDate: DateTime.now().add(Duration(days: 2)),
        arrivalLocation: location[23], // Nice
        arrivalDateTime: DateTime.now().add(Duration(days: 2, hours: 6)),
        driver: fakeUsers[3],
        availableSeats: 3,
        pricePerSeat: 35.0,
      ),

      Ride(
        departureLocation: location[4], // Leeds
        departureDate: DateTime.now().add(Duration(days: 2, hours: 5)),
        arrivalLocation: location[24], // Nantes
        arrivalDateTime: DateTime.now().add(Duration(days: 2, hours: 10)),
        driver: fakeUsers[4],
        availableSeats: 4,
        pricePerSeat: 28.0,
      ),

      Ride(
        departureLocation: location[5], // Glasgow
        departureDate: DateTime.now().add(Duration(days: 3)),
        arrivalLocation: location[25], // Strasbourg
        arrivalDateTime: DateTime.now().add(Duration(days: 3, hours: 7)),
        driver: fakeUsers[5],
        availableSeats: 3,
        pricePerSeat: 40.0,
      ),

      Ride(
        departureLocation: location[6], // Sheffield
        departureDate: DateTime.now().add(Duration(days: 3, hours: 2)),
        arrivalLocation: location[26], // Montpellier
        arrivalDateTime: DateTime.now().add(Duration(days: 3, hours: 8)),
        driver: fakeUsers[0],
        availableSeats: 2,
        pricePerSeat: 26.0,
      ),

      Ride(
        departureLocation: location[7], // Bristol
        departureDate: DateTime.now().add(Duration(days: 4)),
        arrivalLocation: location[27], // Bordeaux
        arrivalDateTime: DateTime.now().add(Duration(days: 4, hours: 6)),
        driver: fakeUsers[1],
        availableSeats: 3,
        pricePerSeat: 29.0,
      ),

      Ride(
        departureLocation: location[8], // Edinburgh
        departureDate: DateTime.now().add(Duration(days: 4, hours: 4)),
        arrivalLocation: location[28], // Lille
        arrivalDateTime: DateTime.now().add(Duration(days: 4, hours: 9)),
        driver: fakeUsers[2],
        availableSeats: 4,
        pricePerSeat: 27.5,
      ),

      Ride(
        departureLocation: location[9], // Leicester
        departureDate: DateTime.now().add(Duration(days: 5)),
        arrivalLocation: location[29], // Rennes
        arrivalDateTime: DateTime.now().add(Duration(days: 5, hours: 5)),
        driver: fakeUsers[3],
        availableSeats: 3,
        pricePerSeat: 24.0,
      ),
    ];
  }
}
