$root = 'c:\Users\SAMEER SINGH\OneDrive\Desktop\labs\web tech\HTML - Copy'

$css = @'
body {
    font-family: Arial, sans-serif;
    margin: 0;
    background: #f4f6fb;
    color: #1f2937;
}

.page {
    max-width: 1150px;
    margin: 0 auto;
    padding: 20px;
}

.hero {
    background: linear-gradient(135deg, #111827, #7c3aed);
    color: white;
    padding: 25px;
    border-radius: 20px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.2);
}

.hero h1 {
    margin: 0 0 8px;
    font-size: 2rem;
}

.hero p {
    margin: 0 0 15px;
}

.nav {
    display: flex;
    flex-wrap: wrap;
    gap: 10px;
    margin-top: 12px;
}

.nav a {
    text-decoration: none;
    color: white;
    background: rgba(255,255,255,0.15);
    padding: 8px 12px;
    border-radius: 999px;
}

.section {
    margin-top: 22px;
}

.card-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
    gap: 18px;
}

.card {
    background: white;
    padding: 18px;
    border-radius: 16px;
    box-shadow: 0 6px 16px rgba(0,0,0,0.08);
}

.card h2, .card h3 {
    margin-top: 0;
}

.movie-card {
    padding: 16px;
    background: #fff7ed;
    border-radius: 14px;
}

.movie-card .tag {
    display: inline-block;
    background: #ef4444;
    color: white;
    padding: 4px 8px;
    border-radius: 999px;
    font-size: 0.8rem;
    margin-bottom: 8px;
}

.btn {
    display: inline-block;
    background: #2563eb;
    color: white;
    padding: 9px 14px;
    text-decoration: none;
    border-radius: 8px;
    margin-top: 10px;
}

.btn-secondary {
    background: #111827;
}

form {
    display: grid;
    gap: 12px;
}

label {
    font-weight: bold;
}

input, select, textarea {
    padding: 10px;
    border: 1px solid #d1d5db;
    border-radius: 8px;
}

.table {
    width: 100%;
    border-collapse: collapse;
    background: white;
}

.table th, .table td {
    padding: 10px;
    border: 1px solid #e5e7eb;
    text-align: left;
}

.table th {
    background: #e0e7ff;
}

.badge {
    display: inline-block;
    padding: 5px 9px;
    border-radius: 999px;
    background: #dcfce7;
    color: #166534;
}

footer {
    margin: 24px 0 8px;
    text-align: center;
    color: #6b7280;
}

.seat-row {
    display: flex;
    gap: 8px;
    flex-wrap: wrap;
    margin-top: 8px;
}

.seat-box {
    width: 36px;
    height: 36px;
    line-height: 36px;
    text-align: center;
    border-radius: 6px;
    background: #d1fae5;
    color: #065f46;
    font-weight: bold;
}

.seat-box.booked {
    background: #fca5a5;
    color: #7f1d1d;
}
'@

$files = @{
    'style.css' = $css;
    'index.html' = @'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CineSpark | Movie Ticket Booking</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="page">
        <header class="hero">
            <h1>🎬 CineSpark</h1>
            <p>Book your favourite movie tickets in a simple and easy way.</p>
            <nav class="nav">
                <a href="index.html">Home</a>
                <a href="movies.html">Movies</a>
                <a href="attendance.html">Now Showing</a>
                <a href="timetable.html">Show Timings</a>
                <a href="booking.html">Book Tickets</a>
                <a href="contact.html">Contact</a>
            </nav>
        </header>

        <section class="section">
            <div class="card">
                <h2>Welcome to CineSpark</h2>
                <p>Choose your movie, pick your seats, and enjoy a smooth booking experience.</p>
                <a class="btn" href="login.html">Login</a>
                <a class="btn btn-secondary" href="dashboard.html">Go to Dashboard</a>
            </div>
        </section>

        <section class="section">
            <h2>Featured Movies</h2>
            <div class="card-grid">
                <div class="movie-card">
                    <span class="tag">New</span>
                    <h3>Sky Riders</h3>
                    <p>Action | 2h 20m</p>
                    <a class="btn" href="booking.html">Book Now</a>
                </div>
                <div class="movie-card">
                    <span class="tag">Trending</span>
                    <h3>Moonlight City</h3>
                    <p>Drama | 2h 05m</p>
                    <a class="btn" href="booking.html">Book Now</a>
                </div>
                <div class="movie-card">
                    <span class="tag">Weekend Pick</span>
                    <h3>Neon Dreams</h3>
                    <p>Sci-Fi | 2h 10m</p>
                    <a class="btn" href="booking.html">Book Now</a>
                </div>
            </div>
        </section>

        <footer>
            <p>© 2026 CineSpark | Beginner HTML + CSS Project</p>
        </footer>
    </div>
</body>
</html>
'@;
    'login.html' = @'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CineSpark | Login</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="page">
        <header class="hero">
            <h1>🔐 Login</h1>
            <p>Sign in to continue your booking journey.</p>
            <nav class="nav">
                <a href="index.html">Home</a>
                <a href="dashboard.html">Dashboard</a>
                <a href="contact.html">Contact</a>
            </nav>
        </header>

        <section class="section">
            <div class="card">
                <h2>Member Login</h2>
                <form>
                    <label for="email">Email</label>
                    <input id="email" type="text" placeholder="Enter your email">

                    <label for="password">Password</label>
                    <input id="password" type="password" placeholder="Enter password">

                    <a class="btn" href="dashboard.html">Login</a>
                </form>
            </div>
        </section>
    </div>
</body>
</html>
'@;
    'dashboard.html' = @'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CineSpark | Dashboard</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="page">
        <header class="hero">
            <h1>📊 Dashboard</h1>
            <p>Welcome back, Riya! Here is your booking summary.</p>
            <nav class="nav">
                <a href="index.html">Home</a>
                <a href="movies.html">Movies</a>
                <a href="booking.html">Book Now</a>
                <a href="profile.html">Profile</a>
            </nav>
        </header>

        <section class="section card-grid">
            <div class="card">
                <h3>My Tickets</h3>
                <p>2 Active Bookings</p>
            </div>
            <div class="card">
                <h3>Favorite Cinema</h3>
                <p>Metro Cinema</p>
            </div>
            <div class="card">
                <h3>Reward Points</h3>
                <p>450 Points</p>
            </div>
        </section>

        <section class="section card-grid">
            <div class="card">
                <h3>Quick Links</h3>
                <p><a href="attendance.html">Now Showing</a></p>
                <p><a href="fees.html">Offers</a></p>
                <p><a href="payment.html">Payment</a></p>
            </div>
            <div class="card">
                <h3>Upcoming Show</h3>
                <p>Sky Riders - 8:30 PM</p>
            </div>
        </section>
    </div>
</body>
</html>
'@;
    'movies.html' = @'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CineSpark | Movies</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="page">
        <header class="hero">
            <h1>🎞️ Movies</h1>
            <p>Browse the latest blockbusters and family favorites.</p>
            <nav class="nav">
                <a href="index.html">Home</a>
                <a href="attendance.html">Now Showing</a>
                <a href="upcoming.html">Upcoming</a>
                <a href="booking.html">Book</a>
            </nav>
        </header>

        <section class="section card-grid">
            <div class="movie-card">
                <span class="tag">Action</span>
                <h3>Sky Riders</h3>
                <p>Action-packed adventure with a thrilling finale.</p>
                <a class="btn" href="booking.html">Book Now</a>
            </div>
            <div class="movie-card">
                <span class="tag">Drama</span>
                <h3>Moonlight City</h3>
                <p>A heartfelt story about dreams and courage.</p>
                <a class="btn" href="booking.html">Book Now</a>
            </div>
            <div class="movie-card">
                <span class="tag">Comedy</span>
                <h3>Happy Street</h3>
                <p>Laugh out loud with this weekend comedy hit.</p>
                <a class="btn" href="booking.html">Book Now</a>
            </div>
        </section>
    </div>
</body>
</html>
'@;
    'attendance.html' = @'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CineSpark | Now Showing</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="page">
        <header class="hero">
            <h1>🎟️ Now Showing</h1>
            <p>See which movies are playing today.</p>
            <nav class="nav">
                <a href="index.html">Home</a>
                <a href="movies.html">Movies</a>
                <a href="timetable.html">Show Timings</a>
            </nav>
        </header>

        <section class="section">
            <div class="card">
                <h2>Today’s Screenings</h2>
                <table class="table">
                    <tr>
                        <th>Movie</th>
                        <th>Time</th>
                        <th>Hall</th>
                        <th>Status</th>
                    </tr>
                    <tr>
                        <td>Sky Riders</td>
                        <td>3:00 PM</td>
                        <td>Hall A</td>
                        <td><span class="badge">Available</span></td>
                    </tr>
                    <tr>
                        <td>Moonlight City</td>
                        <td>6:30 PM</td>
                        <td>Hall B</td>
                        <td><span class="badge">Fast Filling</span></td>
                    </tr>
                    <tr>
                        <td>Neon Dreams</td>
                        <td>9:00 PM</td>
                        <td>Hall C</td>
                        <td><span class="badge">Available</span></td>
                    </tr>
                </table>
            </div>
        </section>
    </div>
</body>
</html>
'@;
    'fees.html' = @'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CineSpark | Offers</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="page">
        <header class="hero">
            <h1>🎁 Offers & Discounts</h1>
            <p>Enjoy amazing deals on your next cinema visit.</p>
            <nav class="nav">
                <a href="index.html">Home</a>
                <a href="booking.html">Book</a>
                <a href="contact.html">Contact</a>
            </nav>
        </header>

        <section class="section card-grid">
            <div class="card">
                <h3>Weekend Offer</h3>
                <p>Get 20% off on tickets booked before Friday.</p>
            </div>
            <div class="card">
                <h3>Student Deal</h3>
                <p>Show your student ID and get a special price.</p>
            </div>
            <div class="card">
                <h3>Combo Pack</h3>
                <p>Buy 2 tickets and get popcorn free.</p>
            </div>
        </section>
    </div>
</body>
</html>
'@;
    'marks.html' = @'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CineSpark | Seat Plan</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="page">
        <header class="hero">
            <h1>🪑 Seat Plan</h1>
            <p>Choose the best seats for your movie night.</p>
            <nav class="nav">
                <a href="index.html">Home</a>
                <a href="booking.html">Book</a>
                <a href="payment.html">Payment</a>
            </nav>
        </header>

        <section class="section">
            <div class="card">
                <h2>Screen View</h2>
                <div class="seat-row">
                    <div class="seat-box">A1</div>
                    <div class="seat-box">A2</div>
                    <div class="seat-box">A3</div>
                    <div class="seat-box booked">A4</div>
                    <div class="seat-box">A5</div>
                </div>
                <div class="seat-row">
                    <div class="seat-box">B1</div>
                    <div class="seat-box">B2</div>
                    <div class="seat-box">B3</div>
                    <div class="seat-box">B4</div>
                    <div class="seat-box booked">B5</div>
                </div>
                <div class="seat-row">
                    <div class="seat-box">C1</div>
                    <div class="seat-box">C2</div>
                    <div class="seat-box">C3</div>
                    <div class="seat-box">C4</div>
                    <div class="seat-box">C5</div>
                </div>
            </div>
        </section>
    </div>
</body>
</html>
'@;
    'library.html' = @'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CineSpark | Theatres</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="page">
        <header class="hero">
            <h1>🏛️ Theatres</h1>
            <p>Choose the cinema hall near you.</p>
            <nav class="nav">
                <a href="index.html">Home</a>
                <a href="attendance.html">Now Showing</a>
                <a href="booking.html">Book</a>
            </nav>
        </header>

        <section class="section card-grid">
            <div class="card">
                <h3>Metro Cinema</h3>
                <p>Downtown Street, 4K screens</p>
            </div>
            <div class="card">
                <h3>Starplex</h3>
                <p>City Mall, Dolby Atmos</p>
            </div>
            <div class="card">
                <h3>Galaxy Hall</h3>
                <p>North Avenue, Family-friendly</p>
            </div>
        </section>
    </div>
</body>
</html>
'@;
    'notice_board.html' = @'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CineSpark | News</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="page">
        <header class="hero">
            <h1>📰 Movie News</h1>
            <p>Latest updates from the cinema world.</p>
            <nav class="nav">
                <a href="index.html">Home</a>
                <a href="movies.html">Movies</a>
                <a href="contact.html">Contact</a>
            </nav>
        </header>

        <section class="section card-grid">
            <div class="card">
                <h3>New Release Alert</h3>
                <p>Sky Riders begins screening from today.</p>
            </div>
            <div class="card">
                <h3>Early Bird Booking</h3>
                <p>Book before noon and get a bonus snack coupon.</p>
            </div>
            <div class="card">
                <h3>Weekend Special</h3>
                <p>All family movies now have 10% extra discount.</p>
            </div>
        </section>
    </div>
</body>
</html>
'@;
    'profile.html' = @'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CineSpark | Profile</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="page">
        <header class="hero">
            <h1>👤 My Profile</h1>
            <p>Manage your movie preferences and personal details.</p>
            <nav class="nav">
                <a href="index.html">Home</a>
                <a href="dashboard.html">Dashboard</a>
                <a href="booking.html">Book</a>
            </nav>
        </header>

        <section class="section card-grid">
            <div class="card">
                <h3>Riya Sharma</h3>
                <p>Email: riya@example.com</p>
                <p>Favorite Genre: Sci-Fi</p>
            </div>
            <div class="card">
                <h3>Membership</h3>
                <p>Gold Member</p>
                <p>Points: 450</p>
            </div>
        </section>
    </div>
</body>
</html>
'@;
    'timetable.html' = @'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CineSpark | Show Timings</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="page">
        <header class="hero">
            <h1>🗓️ Show Timings</h1>
            <p>Check the time schedule for your chosen movie.</p>
            <nav class="nav">
                <a href="index.html">Home</a>
                <a href="attendance.html">Now Showing</a>
                <a href="booking.html">Book</a>
            </nav>
        </header>

        <section class="section">
            <div class="card">
                <h2>Weekly Schedule</h2>
                <table class="table">
                    <tr>
                        <th>Day</th>
                        <th>Movie</th>
                        <th>Time</th>
                    </tr>
                    <tr><td>Mon</td><td>Sky Riders</td><td>6:30 PM</td></tr>
                    <tr><td>Tue</td><td>Moonlight City</td><td>7:00 PM</td></tr>
                    <tr><td>Wed</td><td>Neon Dreams</td><td>8:00 PM</td></tr>
                </table>
            </div>
        </section>
    </div>
</body>
</html>
'@;
    'contact.html' = @'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CineSpark | Contact</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="page">
        <header class="hero">
            <h1>📞 Contact Us</h1>
            <p>Need help with your booking? Reach out to us.</p>
            <nav class="nav">
                <a href="index.html">Home</a>
                <a href="booking.html">Book</a>
                <a href="dashboard.html">Dashboard</a>
            </nav>
        </header>

        <section class="section card-grid">
            <div class="card">
                <h3>Phone</h3>
                <p>+91 98765 43210</p>
            </div>
            <div class="card">
                <h3>Email</h3>
                <p>support@cinespark.com</p>
            </div>
            <div class="card">
                <h3>Address</h3>
                <p>City Mall, Main Street</p>
            </div>
        </section>
    </div>
</body>
</html>
'@;
    'booking.html' = @'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CineSpark | Booking</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="page">
        <header class="hero">
            <h1>🎫 Book Your Ticket</h1>
            <p>Fill in the details to book your seats.</p>
            <nav class="nav">
                <a href="index.html">Home</a>
                <a href="movies.html">Movies</a>
                <a href="payment.html">Payment</a>
            </nav>
        </header>

        <section class="section">
            <div class="card">
                <h2>Booking Form</h2>
                <form>
                    <label for="movie">Movie</label>
                    <select id="movie">
                        <option>Sky Riders</option>
                        <option>Moonlight City</option>
                        <option>Neon Dreams</option>
                    </select>

                    <label for="date">Date</label>
                    <input id="date" type="text" placeholder="20 July 2026">

                    <label for="tickets">Number of Tickets</label>
                    <input id="tickets" type="number" value="2">

                    <a class="btn" href="payment.html">Continue to Payment</a>
                </form>
            </div>
        </section>
    </div>
</body>
</html>
'@;
    'payment.html' = @'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CineSpark | Payment</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="page">
        <header class="hero">
            <h1>💳 Payment</h1>
            <p>Complete your booking securely.</p>
            <nav class="nav">
                <a href="index.html">Home</a>
                <a href="booking.html">Back</a>
                <a href="dashboard.html">Dashboard</a>
            </nav>
        </header>

        <section class="section card-grid">
            <div class="card">
                <h3>Booking Summary</h3>
                <p>Movie: Sky Riders</p>
                <p>Seats: 2</p>
                <p>Total: ₹600</p>
            </div>
            <div class="card">
                <h3>Payment Method</h3>
                <p>UPI</p>
                <p>Card</p>
                <p>Cash at Counter</p>
                <a class="btn" href="dashboard.html">Confirm Booking</a>
            </div>
        </section>
    </div>
</body>
</html>
'@;
    'upcoming.html' = @'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CineSpark | Upcoming</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="page">
        <header class="hero">
            <h1>🌟 Upcoming Movies</h1>
            <p>Get ready for the next big releases.</p>
            <nav class="nav">
                <a href="index.html">Home</a>
                <a href="movies.html">Movies</a>
                <a href="booking.html">Book</a>
            </nav>
        </header>

        <section class="section card-grid">
            <div class="movie-card">
                <span class="tag">Coming Soon</span>
                <h3>Starline</h3>
                <p>Adventure | 2026</p>
            </div>
            <div class="movie-card">
                <span class="tag">Coming Soon</span>
                <h3>River of Lights</h3>
                <p>Romance | 2026</p>
            </div>
        </section>
    </div>
</body>
</html>
'@;
}

foreach ($entry in $files.GetEnumerator()) {
    $path = Join-Path $root $entry.Key
    Set-Content -Path $path -Value $entry.Value -Encoding utf8
}
