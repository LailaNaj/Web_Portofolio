<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Portfolio Laila Najmi - Index</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="{{ asset('img/favicon.png') }}" rel="icon">
  <link href="{{ asset('img/apple-touch-icon.png') }}" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="{{asset('vendor/aos/aos.css')}}" rel="stylesheet">
  <link href="{{asset('vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
  <link href="{{asset('vendor/bootstrap-icons/bootstrap-icons.css')}}" rel="stylesheet">
  <link href="{{asset('vendor/boxicons/css/boxicons.min.css')}}" rel="stylesheet">
  <link href="{{asset('vendor/glightbox/css/glightbox.min.css')}}" rel="stylesheet">
  <link href="{{asset('vendor/swiper/swiper-bundle.min.css')}}" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="{{asset('css/style.css')}}" rel="stylesheet">

  <!-- =======================================================
  * Template Name: iPortfolio
  * Updated: Jan 29 2024 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/iportfolio-bootstrap-portfolio-websites-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Mobile nav toggle button ======= -->
  <i class="bi bi-list mobile-nav-toggle d-xl-none"></i>

  <!-- ======= Header ======= -->
  <header id="header">
    <div class="d-flex flex-column">

      <div class="profile">
        <img src="{{ Storage::url($section->image)}}" alt="" class="img-fluid rounded-circle">
        <h1 class="text-light"><a href="index.html">{{ $section->content }}</a></h1>
        <div class="social-links mt-3 text-center">
    <a href="https://twitter.com/Jainap_" class="twitter"><i class="bx bxl-twitter"></i></a>
    <a href="https://www.facebook.com/lailanajmi" class="facebook"><i class="bx bxl-facebook"></i></a>
    <a href="https://www.instagram.com/_laaaaii.laaa/" class="instagram"><i class="bx bxl-instagram"></i></a>
    <a href="https://myaccount.google.com/?hl=in" class="google-plus"><i class="bx bxl-skype"></i></a>
    <a href="https://www.linkedin.com/in/laila-najmi-b27021220/" class="linkedin"><i class="bx bxl-linkedin"></i></a>
</div>


      <nav id="navbar" class="nav-menu navbar">
        <ul>
          <li><a href="#hero" class="nav-link scrollto active"><i class="bx bx-home"></i> <span>Home</span></a></li>
          <li><a href="#about" class="nav-link scrollto"><i class="bx bx-user"></i> <span>About</span></a></li>
          <li><a href="#skill" class="nav-link scrollto"><i class="bx bx-user"></i> <span>Skill</span></a></li>
          <li><a href="#resume" class="nav-link scrollto"><i class="bx bx-file-blank"></i> <span>Resume</span></a></li>
          <li><a href="#portfolio" class="nav-link scrollto"><i class="bx bx-book-content"></i> <span>Portfolio</span></a></li>
          <li><a href="#contact" class="nav-link scrollto"><i class="bx bx-envelope"></i> <span>Contact</span></a></li>
          <li><a href="/admin" class="nav-link scrollto"><i class="bx bx-envelope"></i> <span>Admin</span></a></li>

        </ul>
      </nav><!-- .nav-menu -->
    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex flex-column justify-content-center align-items-center">
    <div class="hero-container" data-aos="fade-in">
      <h1>{{ $section->name }}</h1>
      <p>{{ $section->title}}</p>
    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container">

        <div class="section-title">
          <h2>About</h2>
          @if ($about)
            <p>{{ $about->content }}</p> <!-- Gantikan 'kolom_deskripsi' dengan nama kolom yang sesuai dari tabel homes -->
        @else
            <p>Data tidak ditemukan.</p>
        @endif
        </div>

        <div class="row">
          <div class="col-lg-4" data-aos="fade-right">
            <img src="{{ Storage::url($about->photos)}}" class="img-fluid" alt="">
          </div>
          <div class="col-lg-8 pt-4 pt-lg-0 content" data-aos="fade-left">

            <h3>{{ $about->profesi }} </h3>
            <p class="fst-italic">
            {{ $about->me }}
            </p>
            <div class="row">
              <div class="col-lg-6">
                <ul>
                  <li><i class="bi bi-chevron-right"></i> <strong>Birthday:</strong> <span>{{ $about->birthday }}</span></li>
                  <li><i class="bi bi-chevron-right"></i> <strong>Age:</strong> <span>{{ $about->age }}</span></li>
                  <li><i class="bi bi-chevron-right"></i> <strong>Website:</strong> <span>{{ $about->website}}</span></li>
                  <li><i class="bi bi-chevron-right"></i> <strong>Phone:</strong> <span>{{ $about->phone }}</span></li>
                  <li><i class="bi bi-chevron-right"></i> <strong>City:</strong> <span>{{ $about->city }}</span></li>
                </ul>
              </div>
              <div class="col-lg-6">
              </div>
            <p>
            </p>
          </div>
        </div>

      </div>
    </section><!-- End About Section -->

    

    <!-- ======= Skills Section ======= -->
    <section id="skills" class="skills section-bg">
      <div class="container">

        <div class="section-title">
          <h2>Skills</h2>
          @foreach ($skills as $skill)
          <p> {{ $skill->content }} </p>
        </div>

        <div class="row skills-content">

          <div class="col-lg-6" data-aos="fade-up">
          
            <div class="progress">
              <span class="skill">{{ $skill->name }}<i class="val">{{ $skill->persen }}%</i></span>
              <div class="progress-bar-wrap">
                <div class="progress-bar" role="progressbar" aria-valuenow="{{ $skill->persen }}" aria-valuemin="0" aria-valuemax="100"></div>
              </div>
            </div>
            @endforeach

          </div>

        </div>

      </div>
    </section><!-- End Skills Section -->

    <!-- ======= Resume Section ======= -->
    <section id="resume" class="resume">
      <div class="container">

        <div class="section-title">
          <h2>Resume</h2>
            <h3 class="resume-title">Education</h3>
            @foreach ($resumes as $resume)
                <div class="resume-item">
                    <h4>{{ $resume->name }}</h4>
                    <h5>{{ $resume->tahun }}</h5>
                </div>
            @endforeach
         
      </div>
    </section><!-- End Resume Section -->

    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio section-bg">
      <div class="container">

        <div class="section-title">
          <h2>Portfolio</h2>
          @foreach ($portofolios as $portofolio)
                <div class="portofolio-item">
                    <h4>{{ $portofolio->name }}</h4>
                    <img src="{{ Storage::url($portofolio->photos)}}" class="img-fluid" alt="">
                </div>
            @endforeach

         
            </div>
          </div>

        </div>

      </div>
    
    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div class="section-title">
          <h2>Contact</h2>

          <p></p>
        </div>

        <div class="row" data-aos="fade-in">

          <div class="col-lg-5 d-flex align-items-stretch">
            <div class="info">
              <div class="address">
                <i class="bi bi-geo-alt"></i>
                <h4>Location:</h4>
                <p>{{ $contact->location }}</p>
              </div>

              <div class="email">
                <i class="bi bi-envelope"></i>
                <h4>Email:</h4>
                <p>{{ $contact->email }}</p>
              </div>

              <div class="phone">
                <i class="bi bi-phone"></i>
                <h4>Call:</h4>
                <p>{{ $contact->call }}</p>
              </div>

              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d63828.911454825924!2d100.38149120000001!3d-0.9173323606281124!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e2ab4d155a999cb%3A0x66b8bd4343579961!2sTransmart%20Padang!5e0!3m2!1sen!2sid!4v1710824784620!5m2!1sen!2sid" frameborder="0" style="border:0; width: 100%; height: 290px;" allowfullscreen></iframe>
            </div>

          </div>


        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>PortfolioLaila </span></strong>
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/iportfolio-bootstrap-portfolio-websites-template/ -->
        Designed by <a href="https://bootstrapmade.com/">LailaNajmi</a>
      </div>
    </div>
  </footer><!-- End  Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="{{asset('vendor/purecounter/purecounter_vanilla.js')}}"></script>
  <script src="{{asset('vendor/aos/aos.js')}}"></script>
  <script src="{{asset('vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
  <script src="{{asset('vendor/glightbox/js/glightbox.min.js')}}"></script>
  <script src="{{asset('vendor/isotope-layout/isotope.pkgd.min.js')}}"></script>
  <script src="{{asset('vendor/swiper/swiper-bundle.min.js')}}"></script>
  <script src="{{asset('vendor/typed.js/typed.umd.js')}}"></script>
  <script src="{{asset('vendor/waypoints/noframework.waypoints.js')}}"></script>
  <script src="{{asset('vendor/php-email-form/validate.js')}}"></script>

  <!-- Template Main JS File -->
  <script src="{{asset('js/main.js')}}"></script>

</body>

</html>