<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Abednego Tenge - Backend & Cloud Engineer</title>
    <meta name="description" content="Backend Engineer and AWS Solutions Architect Associate specializing in scalable, secure cloud-based systems and data-driven solutions.">
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap');
        
        * {
            font-family: 'Inter', sans-serif;
        }
        /* html, body {
            overflow-x: hidden;
        } */
        
        .gradient-bg {
            background: linear-gradient(135deg, #1e3a8a 0%, #1e40af 50%, #3b82f6 100%);
        }
        
        .floating-animation {
            animation: float 6s ease-in-out infinite;
        }
        
        @keyframes float {
            0%, 100% { transform: translateY(0px); }
            50% { transform: translateY(-20px); }
        }
        
        .skill-bar {
            transition: width 2s ease-in-out;
        }
        
        .project-card {
            transition: all 0.3s ease;
        }
        
        .project-card:hover {
            transform: translateY(-10px);
        }
        
        .testimonial-card {
            min-height: 200px;
        }
        
        .dark .gradient-bg {
            background: linear-gradient(135deg, #0f172a 0%, #1e293b 50%, #334155 100%);
        }
        
        .scroll-smooth {
            scroll-behavior: smooth;
        }
        
        .back-to-top {
            position: fixed;
            bottom: 20px;
            right: 20px;
            z-index: 1000;
            opacity: 0;
            transition: opacity 0.3s ease;
        }
        
        .back-to-top.visible {
            opacity: 1;
        }
    </style>
</head>
<body class="scroll-smooth bg-white dark:bg-gray-900 text-gray-900 dark:text-white transition-colors duration-300">
    <!-- Navigation -->
    <nav class="fixed top-0 w-full bg-white/90 dark:bg-gray-900/90 backdrop-blur-md z-50 border-b border-gray-200 dark:border-gray-700">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between items-center py-4">
                <div class="text-lg sm:text-xl md:text-2xl font-bold text-blue-600 dark:text-blue-400">
                    <span class="hidden sm:inline">Abednego Tenge</span>
                    <span class="sm:hidden">A. Tenge</span>
                </div>
                <div class="hidden md:flex space-x-8">
                    <a href="#home" class="hover:text-blue-600 dark:hover:text-blue-400 transition-colors">Home</a>
                    <a href="#about" class="hover:text-blue-600 dark:hover:text-blue-400 transition-colors">About</a>
                    <a href="#projects" class="hover:text-blue-600 dark:hover:text-blue-400 transition-colors">Projects</a>
                    <a href="#services" class="hover:text-blue-600 dark:hover:text-blue-400 transition-colors">Services</a>
                    <a href="#testimonials" class="hover:text-blue-600 dark:hover:text-blue-400 transition-colors">Testimonials</a>
                    <a href="#blog" class="hover:text-blue-600 dark:hover:text-blue-400 transition-colors">Blog</a>
                    <a href="#contact" class="hover:text-blue-600 dark:hover:text-blue-400 transition-colors">Contact</a>
                </div>
                <div class="flex items-center space-x-4">
                    <button id="theme-toggle" class="p-2 rounded-lg bg-gray-100 dark:bg-gray-800 hover:bg-gray-200 dark:hover:bg-gray-700 transition-colors">
                        <i class="fas fa-moon dark:hidden"></i>
                        <i class="fas fa-sun hidden dark:inline"></i>
                    </button>
                    <button id="mobile-menu-toggle" class="md:hidden p-2 rounded-lg bg-gray-100 dark:bg-gray-800 hover:bg-gray-200 dark:hover:bg-gray-700 transition-colors">
                        <i class="fas fa-bars"></i>
                    </button>
                </div>
            </div>
            <!-- Mobile Menu -->
            <div id="mobile-menu" class="md:hidden hidden bg-white dark:bg-gray-900 border-t border-gray-200 dark:border-gray-700">
                <div class="px-4 py-4 space-y-4">
                    <a href="#home" class="block hover:text-blue-600 dark:hover:text-blue-400 transition-colors">Home</a>
                    <a href="#about" class="block hover:text-blue-600 dark:hover:text-blue-400 transition-colors">About</a>
                    <a href="#projects" class="block hover:text-blue-600 dark:hover:text-blue-400 transition-colors">Projects</a>
                    <a href="#services" class="block hover:text-blue-600 dark:hover:text-blue-400 transition-colors">Services</a>
                    <a href="#testimonials" class="block hover:text-blue-600 dark:hover:text-blue-400 transition-colors">Testimonials</a>
                    <a href="#blog" class="block hover:text-blue-600 dark:hover:text-blue-400 transition-colors">Blog</a>
                    <a href="#contact" class="block hover:text-blue-600 dark:hover:text-blue-400 transition-colors">Contact</a>
                </div>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section id="home" class="min-h-screen gradient-bg flex items-center justify-center relative overflow-hidden">
        <div class="absolute inset-0 opacity-10">
            <div class="floating-animation absolute top-20 left-10 w-20 h-20 bg-white rounded-full"></div>
            <div class="floating-animation absolute top-40 right-20 w-16 h-16 bg-cyan-300 rounded-full" style="animation-delay: -2s;"></div>
            <div class="floating-animation absolute bottom-40 left-1/4 w-12 h-12 bg-orange-300 rounded-full" style="animation-delay: -4s;"></div>
        </div>
        
        <div class="text-center text-white z-10 max-w-4xl mx-auto px-4 sm:px-6">
            <h1 class="text-3xl sm:text-4xl md:text-5xl lg:text-7xl font-bold mb-6 leading-tight">
                Building Scalable Backend Systems & Cloud Solutions
            </h1>
            <p class="text-lg sm:text-xl md:text-2xl mb-8 opacity-90 max-w-3xl mx-auto">
                Backend Engineer and AWS Solutions Architect Associate with hands-on experience building scalable backend systems, managing cloud infrastructure, and delivering reliable technical solutions that align with business needs.
            </p>
            <div class="flex flex-col sm:flex-row gap-4 justify-center">
                <a href="#projects" class="bg-white text-blue-600 px-6 sm:px-8 py-3 sm:py-4 rounded-lg font-semibold hover:bg-gray-100 transition-colors inline-flex items-center justify-center">
                    <i class="fas fa-code mr-2"></i>
                    View My Work
                </a>
                <a href="#contact" class="border-2 border-white text-white px-6 sm:px-8 py-3 sm:py-4 rounded-lg font-semibold hover:bg-white hover:text-blue-600 transition-colors inline-flex items-center justify-center">
                    <i class="fas fa-handshake mr-2"></i>
                    Hire Me
                </a>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section id="about" class="py-20 bg-gray-50 dark:bg-gray-800">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="text-center mb-16">
                <h2 class="text-4xl font-bold mb-4">About Me</h2>
                <p class="text-xl text-gray-600 dark:text-gray-300 max-w-3xl mx-auto">
                    Passionate about building systems that power the digital world. I specialize in creating scalable backend architectures, optimizing cloud infrastructure, and implementing DevOps best practices.
                </p>
            </div>

            
            <div class="grid md:grid-cols-2 gap-12 items-center">
                <div>
                    <h3 class="text-2xl font-semibold mb-6">My Journey</h3>
                    <p class="text-gray-600 dark:text-gray-300 mb-6">
                        Abednego Tenge is a backend engineer and AWS Solutions Architect Associate passionate about building scalable, secure, and efficient cloud-based systems. He has successfully designed cloud infrastructures, optimized backend workflows, and delivered data-driven solutions that enhance business operations.
                    </p>
                    <p class="text-gray-600 dark:text-gray-300 mb-8">
                        Abed aims to help organizations implement high-performing systems while continuing to grow his expertise in cloud computing and software engineering. What sets him apart is his ability to design robust, scalable systems that align with business needs, ensuring projects run smoothly and deliver measurable results.
                    </p>
                    <a href="https://drive.google.com/file/d/1qPHf3GrOYrIxeOcppVQ-hPbgZBFajhe5/view?usp=sharing" class="bg-blue-600 text-white px-6 py-3 rounded-lg hover:bg-blue-700 transition-colors inline-flex items-center">
                        <i class="fas fa-download mr-2"></i>
                        Download Resume
                    </a>
                </div>
                
                <div>
                    <h3 class="text-2xl font-semibold mb-6">Technical Skills</h3>
                    <div class="space-y-6">
                        <div>
                            <div class="flex justify-between mb-2">
                                <span class="font-medium">Backend Development</span>
                                <span class="text-blue-600">95%</span>
                            </div>
                            <div class="w-full bg-gray-200 dark:bg-gray-700 rounded-full h-3">
                                <div class="skill-bar bg-blue-600 h-3 rounded-full" style="width: 95%"></div>
                            </div>
                        </div>
                        
                        <div>
                            <div class="flex justify-between mb-2">
                                <span class="font-medium">Cloud Platforms (AWS/Azure/GCP)</span>
                                <span class="text-blue-600">90%</span>
                            </div>
                            <div class="w-full bg-gray-200 dark:bg-gray-700 rounded-full h-3">
                                <div class="skill-bar bg-blue-600 h-3 rounded-full" style="width: 90%"></div>
                            </div>
                        </div>
                        
                        <div>
                            <div class="flex justify-between mb-2">
                                <span class="font-medium">Database Design & Optimization</span>
                                <span class="text-blue-600">88%</span>
                            </div>
                            <div class="w-full bg-gray-200 dark:bg-gray-700 rounded-full h-3">
                                <div class="skill-bar bg-blue-600 h-3 rounded-full" style="width: 88%"></div>
                            </div>
                        </div>
                        
                        <div>
                            <div class="flex justify-between mb-2">
                                <span class="font-medium">DevOps & Infrastructure</span>
                                <span class="text-blue-600">85%</span>
                            </div>
                            <div class="w-full bg-gray-200 dark:bg-gray-700 rounded-full h-3">
                                <div class="skill-bar bg-blue-600 h-3 rounded-full" style="width: 85%"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="max-w-2xl mx-auto my-10 p-4 text-center">
        <h2 class="text-2xl font-bold mb-4">My Elevator Pitch</h2>
        <div class="aspect-w-16 aspect-h-9">
            <iframe
                    class="w-full h-64 rounded-xl shadow-lg"
                    src="https://www.youtube.com/embed/vyF_oUWjl4Q"
                    title="Elevator Pitch Video"
                    frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen>
            </iframe>
        </div>
    </section>


    <!-- Projects Section -->
    <section id="projects" class="py-20">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="text-center mb-16">
                <h2 class="text-4xl font-bold mb-4">Featured Projects</h2>
                <p class="text-xl text-gray-600 dark:text-gray-300">
                    A showcase of my recent work in backend systems and cloud infrastructure
                </p>
            </div>
            
            <div class="flex justify-center mb-12 px-4">
                <div class="flex flex-wrap gap-2 sm:gap-4 justify-center">
                    <button class="filter-btn bg-blue-600 text-white px-4 sm:px-6 py-2 rounded-full text-sm sm:text-base" data-filter="all">All</button>
                    <button class="filter-btn bg-gray-200 dark:bg-gray-700 text-gray-700 dark:text-gray-300 px-4 sm:px-6 py-2 rounded-full hover:bg-blue-600 hover:text-white transition-colors text-sm sm:text-base" data-filter="cloud">Cloud</button>
                    <button class="filter-btn bg-gray-200 dark:bg-gray-700 text-gray-700 dark:text-gray-300 px-4 sm:px-6 py-2 rounded-full hover:bg-blue-600 hover:text-white transition-colors text-sm sm:text-base" data-filter="api">APIs</button>
                    <button class="filter-btn bg-gray-200 dark:bg-gray-700 text-gray-700 dark:text-gray-300 px-4 sm:px-6 py-2 rounded-full hover:bg-blue-600 hover:text-white transition-colors text-sm sm:text-base" data-filter="database">Databases</button>
                    <button class="filter-btn bg-gray-200 dark:bg-gray-700 text-gray-700 dark:text-gray-300 px-4 sm:px-6 py-2 rounded-full hover:bg-blue-600 hover:text-white transition-colors text-sm sm:text-base" data-filter="automation">Automation</button>
                </div>
            </div>
            
            <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8" id="projects-grid">
                <div class="project-card bg-white dark:bg-gray-800 rounded-xl shadow-lg overflow-hidden" data-category="cloud api">
                    <div class="h-48 bg-gradient-to-br from-blue-500 to-purple-600 flex items-center justify-center">
                        <i class="fas fa-cloud-upload text-6xl text-white"></i>
                    </div>
                    <div class="p-6">
                        <h3 class="text-xl font-semibold mb-3">AWS S3 Web Hosting</h3>
                        <p class="text-gray-600 dark:text-gray-300 mb-4">
                            Built a cost-effective static hosting architecture using AWS S3 and CloudFront, reducing infrastructure overhead while maintaining scalability and performance.
                        </p>
                        <div class="flex flex-wrap gap-2 mb-4">
                            <span class="bg-blue-100 dark:bg-blue-900 text-blue-800 dark:text-blue-200 px-3 py-1 rounded-full text-sm">java</span>
                            <span class="bg-blue-100 dark:bg-blue-900 text-blue-800 dark:text-blue-200 px-3 py-1 rounded-full text-sm">AWS</span>
                        </div>
                        <div class="flex gap-4">
                            <a href="https://github.com/AbednegoTenge/S3StaticWebsite" class="text-blue-600 hover:text-blue-700 font-medium">
                                <i class="fab fa-github mr-1"></i>GitHub
                            </a>
                            <a href="https://abednegotenge.s3.us-east-1.amazonaws.com/index.html" class="text-blue-600 hover:text-blue-700 font-medium">
                                <i class="fas fa-external-link-alt mr-1"></i>Live Demo
                            </a>
                        </div>
                    </div>
                </div>
                
                <div class="project-card bg-white dark:bg-gray-800 rounded-xl shadow-lg overflow-hidden" data-category="cloud">
                    <div class="h-48 bg-gradient-to-br from-green-500 to-teal-600 flex items-center justify-center">
                        <i class="fas fa-link text-6xl text-white"></i>
                    </div>
                    <div class="p-6">
                        <h3 class="text-xl font-semibold mb-3">VPC Peering</h3>
                        <p class="text-gray-600 dark:text-gray-300 mb-4">
                            Configured secure VPC Peering to facilitate private communication between services across multiple AWS VPCs without exposing data to the public internet
                        </p>
                        <div class="flex flex-wrap gap-2 mb-4">
                            <span class="bg-green-100 dark:bg-green-900 text-green-800 dark:text-green-200 px-3 py-1 rounded-full text-sm">AWS</span>
                            <span class="bg-green-100 dark:bg-green-900 text-green-800 dark:text-green-200 px-3 py-1 rounded-full text-sm">NextWork</span>
                        </div>
                        <div class="flex gap-4">
                            <a href="https://drive.google.com/file/d/1v71bimqpJXdzdTYp-BqkgN3-WHGYUhZC/view?usp=drive_link" class="text-blue-600 hover:text-blue-700 font-medium">
                                <i class="fas fa-external-link-alt mr-1"></i>Live Demo
                            </a>
                        </div>
                    </div>
                </div>
                
                <div class="project-card bg-white dark:bg-gray-800 rounded-xl shadow-lg overflow-hidden" data-category="api database">
                    <div class="h-48 bg-gradient-to-br from-orange-500 to-red-600 flex items-center justify-center">
                        <i class="fas fa-plug text-6xl text-white"></i>
                    </div>
                    <div class="p-6">
                        <h3 class="text-xl font-semibold mb-3">YouTube API</h3>
                        <p class="text-gray-600 dark:text-gray-300 mb-4">
                            Implemented CRUD functionality with the YouTube Data API, enabling seamless video management including uploading, retrieving, updating, and deleting content programmatically.
                        </p>
                        <div class="flex flex-wrap gap-2 mb-4">
                            <span class="bg-orange-100 dark:bg-orange-900 text-orange-800 dark:text-orange-200 px-3 py-1 rounded-full text-sm">Python</span>
                            <span class="bg-orange-100 dark:bg-orange-900 text-orange-800 dark:text-orange-200 px-3 py-1 rounded-full text-sm">Flask</span>
<!--                            <span class="bg-orange-100 dark:bg-orange-900 text-orange-800 dark:text-orange-200 px-3 py-1 rounded-full text-sm">Jenkins</span>-->
                        </div>
                        <div class="flex gap-4">
                            <a href="https://github.com/AbednegoTenge/Youtube_Api" class="text-blue-600 hover:text-blue-700 font-medium">
                                <i class="fab fa-github mr-1"></i>GitHub
                            </a>
<!--                            <a href="#" class="text-blue-600 hover:text-blue-700 font-medium">-->
<!--                                <i class="fas fa-external-link-alt mr-1"></i>Live Demo-->
<!--                            </a>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Services Section -->
    <section id="services" class="py-20 bg-gray-50 dark:bg-gray-800">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="text-center mb-16">
                <h2 class="text-4xl font-bold mb-4">Services Offered</h2>
                <p class="text-xl text-gray-600 dark:text-gray-300">
                    Comprehensive backend and cloud solutions to power your business
                </p>
            </div>
            
            <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
                <div class="bg-white dark:bg-gray-900 p-8 rounded-xl shadow-lg text-center hover:shadow-xl transition-shadow">
                    <div class="w-16 h-16 bg-blue-100 dark:bg-blue-900 rounded-full flex items-center justify-center mx-auto mb-6">
                        <i class="fas fa-server text-2xl text-blue-600"></i>
                    </div>
                    <h3 class="text-xl font-semibold mb-4">Backend Development</h3>
                    <p class="text-gray-600 dark:text-gray-300">
                        Scalable APIs, microservices architecture, and robust backend systems using modern frameworks and best practices.
                    </p>
                </div>
                
                <div class="bg-white dark:bg-gray-900 p-8 rounded-xl shadow-lg text-center hover:shadow-xl transition-shadow">
                    <div class="w-16 h-16 bg-cyan-100 dark:bg-cyan-900 rounded-full flex items-center justify-center mx-auto mb-6">
                        <i class="fas fa-cloud text-2xl text-cyan-600"></i>
                    </div>
                    <h3 class="text-xl font-semibold mb-4">Cloud Migration</h3>
                    <p class="text-gray-600 dark:text-gray-300">
                        Seamless migration to AWS, Azure, or GCP with optimized architecture for performance and cost-efficiency.
                    </p>
                </div>
                
                <div class="bg-white dark:bg-gray-900 p-8 rounded-xl shadow-lg text-center hover:shadow-xl transition-shadow">
                    <div class="w-16 h-16 bg-green-100 dark:bg-green-900 rounded-full flex items-center justify-center mx-auto mb-6">
                        <i class="fas fa-plug text-2xl text-green-600"></i>
                    </div>
                    <h3 class="text-xl font-semibold mb-4">API Integration</h3>
                    <p class="text-gray-600 dark:text-gray-300">
                        Third-party API integrations, custom API development, and API gateway implementation for seamless connectivity.
                    </p>
                </div>
                
                <div class="bg-white dark:bg-gray-900 p-8 rounded-xl shadow-lg text-center hover:shadow-xl transition-shadow">
                    <div class="w-16 h-16 bg-purple-100 dark:bg-purple-900 rounded-full flex items-center justify-center mx-auto mb-6">
                        <i class="fas fa-database text-2xl text-purple-600"></i>
                    </div>
                    <h3 class="text-xl font-semibold mb-4">Database Optimization</h3>
                    <p class="text-gray-600 dark:text-gray-300">
                        Database design, performance tuning, and optimization for SQL and NoSQL databases to handle high-volume data.
                    </p>
                </div>
                
                <div class="bg-white dark:bg-gray-900 p-8 rounded-xl shadow-lg text-center hover:shadow-xl transition-shadow">
                    <div class="w-16 h-16 bg-orange-100 dark:bg-orange-900 rounded-full flex items-center justify-center mx-auto mb-6">
                        <i class="fas fa-infinity text-2xl text-orange-600"></i>
                    </div>
                    <h3 class="text-xl font-semibold mb-4">DevOps & CI/CD</h3>
                    <p class="text-gray-600 dark:text-gray-300">
                        Automated deployment pipelines, infrastructure as code, and monitoring solutions for reliable operations.
                    </p>
                </div>
                
                <div class="bg-white dark:bg-gray-900 p-8 rounded-xl shadow-lg text-center hover:shadow-xl transition-shadow">
                    <div class="w-16 h-16 bg-red-100 dark:bg-red-900 rounded-full flex items-center justify-center mx-auto mb-6">
                        <i class="fas fa-shield-alt text-2xl text-red-600"></i>
                    </div>
                    <h3 class="text-xl font-semibold mb-4">Security & Compliance</h3>
                    <p class="text-gray-600 dark:text-gray-300">
                        Implementation of security best practices, compliance frameworks, and vulnerability assessments.
                    </p>
                </div>
            </div>
        </div>
    </section>

    <!-- Testimonials Section -->
    <section id="testimonials" class="py-20">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="text-center mb-16">
                <h2 class="text-4xl font-bold mb-4">Client Testimonials</h2>
                <p class="text-xl text-gray-600 dark:text-gray-300">
                    What clients say about working with me
                </p>
            </div>
            
            <div class="relative">
                <div class="testimonial-slider overflow-hidden">
                    <div class="flex transition-transform duration-500 ease-in-out" id="testimonial-track">
                        <div class="testimonial-card w-full flex-shrink-0 px-4">
                            <div class="bg-white dark:bg-gray-800 p-8 rounded-xl shadow-lg max-w-4xl mx-auto">
                                <div class="flex items-center mb-6">
                                    <div class="flex text-yellow-400 text-xl">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                    </div>
                                </div>
                                <p class="text-lg text-gray-600 dark:text-gray-300 mb-6 italic">
                                    "Abed transformed our legacy system into a modern, scalable architecture. The migration to AWS reduced our costs by 40% while improving performance significantly. His expertise in cloud infrastructure is exceptional."
                                </p>
                                <div class="flex items-center">
                                    <div class="w-12 h-12 bg-blue-500 rounded-full flex items-center justify-center text-white font-semibold mr-4">
                                        SM
                                    </div>
                                    <div>
                                        <h4 class="font-semibold">Sarah Mitchell</h4>
                                        <p class="text-gray-600 dark:text-gray-400">CTO, TechStart Inc.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="testimonial-card w-full flex-shrink-0 px-4">
                            <div class="bg-white dark:bg-gray-800 p-8 rounded-xl shadow-lg max-w-4xl mx-auto">
                                <div class="flex items-center mb-6">
                                    <div class="flex text-yellow-400 text-xl">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                    </div>
                                </div>
                                <p class="text-lg text-gray-600 dark:text-gray-300 mb-6 italic">
                                    "Working with Abed was a game-changer for our API infrastructure. He delivered a robust, high-performance solution that handles millions of requests daily. His attention to detail and proactive communication made the project seamless."
                                </p>
                                <div class="flex items-center">
                                    <div class="w-12 h-12 bg-green-500 rounded-full flex items-center justify-center text-white font-semibold mr-4">
                                        MJ
                                    </div>
                                    <div>
                                        <h4 class="font-semibold">Michael Johnson</h4>
                                        <p class="text-gray-600 dark:text-gray-400">Lead Developer, DataFlow Solutions</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="testimonial-card w-full flex-shrink-0 px-4">
                            <div class="bg-white dark:bg-gray-800 p-8 rounded-xl shadow-lg max-w-4xl mx-auto">
                                <div class="flex items-center mb-6">
                                    <div class="flex text-yellow-400 text-xl">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                    </div>
                                </div>
                                <p class="text-lg text-gray-600 dark:text-gray-300 mb-6 italic">
                                    "Abed's DevOps expertise helped us achieve 99.9% uptime and reduced our deployment time from hours to minutes. His automation solutions and monitoring setup have been invaluable for our operations team."
                                </p>
                                <div class="flex items-center">
                                    <div class="w-12 h-12 bg-purple-500 rounded-full flex items-center justify-center text-white font-semibold mr-4">
                                        ER
                                    </div>
                                    <div>
                                        <h4 class="font-semibold">Emily Rodriguez</h4>
                                        <p class="text-gray-600 dark:text-gray-400">Operations Manager, CloudTech Corp</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <button class="testimonial-prev absolute left-2 sm:left-4 top-1/2 transform -translate-y-1/2 bg-white dark:bg-gray-800 p-2 sm:p-3 rounded-full shadow-lg hover:shadow-xl transition-shadow">
                    <i class="fas fa-chevron-left text-gray-600 dark:text-gray-300 text-sm sm:text-base"></i>
                </button>
                <button class="testimonial-next absolute right-2 sm:right-4 top-1/2 transform -translate-y-1/2 bg-white dark:bg-gray-800 p-2 sm:p-3 rounded-full shadow-lg hover:shadow-xl transition-shadow">
                    <i class="fas fa-chevron-right text-gray-600 dark:text-gray-300 text-sm sm:text-base"></i>
                </button>
            </div>
        </div>
    </section>

    <!-- Blog Section -->
    <section id="blog" class="py-20 bg-gray-50 dark:bg-gray-800">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="text-center mb-16">
                <h2 class="text-4xl font-bold mb-4">Latest Blog Posts</h2>
                <p class="text-xl text-gray-600 dark:text-gray-300">
                    Insights on backend development and cloud technologies
                </p>
            </div>
            
            <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
                <article class="bg-white dark:bg-gray-900 rounded-xl shadow-lg overflow-hidden hover:shadow-xl transition-shadow">
                    <div class="h-48 bg-gradient-to-br from-blue-500 to-purple-600 flex items-center justify-center">
                        <i class="fas fa-project-diagram text-6xl text-white"></i>
                    </div>
                    <div class="p-6">
                        <div class="text-sm text-blue-600 dark:text-blue-400 mb-2">August 15, 2025.</div>
                        <h3 class="text-xl font-semibold mb-3">Simplifying Complex Logic Diagrams</h3>
                        <p class="text-gray-600 dark:text-gray-300 mb-4">
                            Importance of diagrams on my learning journey as a backend developer.
                        </p>
                        <a href="https://www.linkedin.com/posts/abednegotenge_in-my-learning-journey-as-a-backend-developer-activity-7363277508416348161-D7qH?utm_source=share&utm_medium=member_desktop&rcm=ACoAAEjEXk0BSgVJfJfg37Gv3OdA1d6JBxZoGRs" class="text-blue-600 hover:text-blue-700 font-medium">
                            Read More <i class="fas fa-arrow-right ml-1"></i>
                        </a>
                    </div>
                </article>
                
                <article class="bg-white dark:bg-gray-900 rounded-xl shadow-lg overflow-hidden hover:shadow-xl transition-shadow">
                    <div class="h-48 bg-gradient-to-br from-green-500 to-teal-600 flex items-center justify-center">
                        <i class="fas fa-database text-6xl text-white"></i>
                    </div>
                    <div class="p-6">
                        <div class="text-sm text-blue-600 dark:text-blue-400 mb-2">July 22, 2025</div>
                        <h3 class="text-xl font-semibold mb-3">Database Scaling Patterns for High Traffic</h3>
                        <p class="text-gray-600 dark:text-gray-300 mb-4">
                            Explore different database scaling strategies including sharding, replication, and caching for high-traffic applications.
                        </p>
                        <a href="#" class="text-blue-600 hover:text-blue-700 font-medium">
                            Read More <i class="fas fa-arrow-right ml-1"></i>
                        </a>
                    </div>
                </article>

                <article class="bg-white dark:bg-gray-900 rounded-xl shadow-lg overflow-hidden hover:shadow-xl transition-shadow">
                    <div class="h-48 bg-gradient-to-br from-orange-500 to-red-600 flex items-center justify-center">
                        <i class="fas fa-rocket text-6xl text-white"></i>
                    </div>
                    <div class="p-6">
                        <div class="text-sm text-blue-600 dark:text-blue-400 mb-2">June 6, 2025</div>
                        <h3 class="text-xl font-semibold mb-3">Building Resilient Microservices</h3>
                        <p class="text-gray-600 dark:text-gray-300 mb-4">
                            Best practices for designing fault-tolerant microservices that can handle failures gracefully and maintain system stability.
                        </p>
                        <a href="#" class="text-blue-600 hover:text-blue-700 font-medium">
                            Read More <i class="fas fa-arrow-right ml-1"></i>
                        </a>
                    </div>
                </article>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="py-20">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-10">
            <div class="text-center mb-16">
                <h2 class="text-4xl font-bold mb-4">Get In Touch</h2>
                <p class="text-xl text-gray-600 dark:text-gray-300">
                    Ready to discuss your next project? Let's build something amazing together.
                </p>
            </div>
            
            <div class="grid md:grid-cols-2 gap-12">
                <div>
                    <h3 class="text-2xl font-semibold mb-6">Let's Connect</h3>
                    <p class="text-gray-600 dark:text-gray-300 mb-8 break-words">
                        If you're looking for someone who can build scalable backend systems and optimize cloud infrastructure, I'd love the opportunity to contribute to your team or project. Let's discuss how we can work together to create efficient, reliable solutions that drive results.
                    </p>
                    
                    <div class="space-y-6">
                        <div class="flex items-center">
                            <div class="w-12 h-12 bg-blue-100 dark:bg-blue-900 rounded-full flex items-center justify-center mr-4">
                                <i class="fas fa-envelope text-blue-600"></i>
                            </div>
                            <div>
                                <h4 class="font-semibold">Email</h4>
                                <p class="text-gray-600 dark:text-gray-300 break-words">abednegotenge180@gmail.com</p>
                            </div>
                        </div>
                        
                        <div class="flex items-center">
                            <div class="w-12 h-12 bg-blue-100 dark:bg-blue-900 rounded-full flex items-center justify-center mr-4">
                                <i class="fab fa-linkedin text-blue-600"></i>
                            </div>
                            <div>
                                <h4 class="font-semibold">LinkedIn</h4>
                                <p class="text-gray-600 dark:text-gray-300 break-words">linkedin.com/in/abednegotenge</p>
                            </div>
                        </div>
                        
                        <div class="flex items-center">
                            <div class="w-12 h-12 bg-blue-100 dark:bg-blue-900 rounded-full flex items-center justify-center mr-4">
                                <i class="fab fa-github text-blue-600"></i>
                            </div>
                            <div>
                                <h4 class="font-semibold">GitHub</h4>
                                <p class="text-gray-600 dark:text-gray-300 break-words">github.com/AbednegoTenge</p>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="bg-white dark:bg-gray-800 p-8 rounded-xl shadow-lg">
                    <form id="contact-form" class="space-y-6">
                        <div>
                            <label for="name" class="block text-sm font-medium mb-2">Name</label>
                            <input type="text" id="name" name="name" required class="w-full px-4 py-3 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent dark:bg-gray-700 dark:text-white">
                        </div>
                        
                        <div>
                            <label for="email" class="block text-sm font-medium mb-2">Email</label>
                            <input type="email" id="email" name="email" required class="w-full px-4 py-3 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent dark:bg-gray-700 dark:text-white">
                        </div>
                        
                        <div>
                            <label for="message" class="block text-sm font-medium mb-2">Message</label>
                            <textarea id="message" name="message" rows="5" required class="w-full px-4 py-3 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent dark:bg-gray-700 dark:text-white"></textarea>
                        </div>
                        
                        <button type="submit" class="w-full bg-blue-600 text-white py-3 px-6 rounded-lg hover:bg-blue-700 transition-colors font-semibold">
                            Send Message
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-gray-900 text-white py-12">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="text-center">
                <div class="text-2xl font-bold text-blue-400 mb-4">Abednego Tenge</div>
                <p class="text-gray-400 mb-6">Backend Engineer & AWS Solutions Architect Associate</p>
                <div class="flex justify-center space-x-6 mb-8">
                    <a href="https://www.linkedin.com/in/abednegotenge" class="text-gray-400 hover:text-white transition-colors">
                        <i class="fab fa-linkedin text-2xl"></i>
                    </a>
                    <a href="https://github.com/AbednegoTenge" class="text-gray-400 hover:text-white transition-colors">
                        <i class="fab fa-github text-2xl"></i>
                    </a>
                    <a href="#" class="text-gray-400 hover:text-white transition-colors">
                        <i class="fab fa-twitter text-2xl"></i>
                    </a>
                </div>
                <p class="text-gray-400">
                    © 2025 Abednego Tenge. All rights reserved.
                </p>
            </div>
        </div>
    </footer>

    <!-- Back to Top Button -->
    <button class="back-to-top bg-blue-600 text-white p-3 rounded-full shadow-lg hover:bg-blue-700 transition-colors" id="back-to-top">
        <i class="fas fa-arrow-up"></i>
    </button>

    <script>
        // Theme Toggle
        const themeToggle = document.getElementById('theme-toggle');
        const html = document.documentElement;
        
        themeToggle.addEventListener('click', () => {
            html.classList.toggle('dark');
            localStorage.setItem('theme', html.classList.contains('dark') ? 'dark' : 'light');
        });
        
        // Load saved theme — default to dark unless user explicitly chose light
        if (localStorage.getItem('theme') === 'light') {
            html.classList.remove('dark');
        } else {
            html.classList.add('dark');
        }
        
        // Mobile Menu Toggle
        const mobileMenuToggle = document.getElementById('mobile-menu-toggle');
        const mobileMenu = document.getElementById('mobile-menu');
        
        mobileMenuToggle.addEventListener('click', () => {
            mobileMenu.classList.toggle('hidden');
        });
        
        // Close mobile menu when clicking on links
        document.querySelectorAll('#mobile-menu a').forEach(link => {
            link.addEventListener('click', () => {
                mobileMenu.classList.add('hidden');
            });
        });
        
        // Project Filtering
        const filterButtons = document.querySelectorAll('.filter-btn');
        const projectCards = document.querySelectorAll('.project-card');
        
        filterButtons.forEach(button => {
            button.addEventListener('click', () => {
                const filter = button.getAttribute('data-filter');
                
                // Update active button
                filterButtons.forEach(btn => {
                    btn.classList.remove('bg-blue-600', 'text-white');
                    btn.classList.add('bg-gray-200', 'dark:bg-gray-700', 'text-gray-700', 'dark:text-gray-300');
                });
                button.classList.remove('bg-gray-200', 'dark:bg-gray-700', 'text-gray-700', 'dark:text-gray-300');
                button.classList.add('bg-blue-600', 'text-white');
                
                // Filter projects
                projectCards.forEach(card => {
                    const categories = card.getAttribute('data-category').split(' ');
                    if (filter === 'all' || categories.includes(filter)) {
                        card.style.display = 'block';
                    } else {
                        card.style.display = 'none';
                    }
                });
            });
        });
        
        // Testimonial Slider
        let currentTestimonial = 0;
        const testimonialTrack = document.getElementById('testimonial-track');
        const testimonialCards = document.querySelectorAll('.testimonial-card');
        const totalTestimonials = testimonialCards.length;
        
        function updateTestimonialSlider() {
            const translateX = -currentTestimonial * 100;
            testimonialTrack.style.transform = `translateX(${translateX}%)`;
        }
        
        document.querySelector('.testimonial-prev').addEventListener('click', () => {
            currentTestimonial = currentTestimonial > 0 ? currentTestimonial - 1 : totalTestimonials - 1;
            updateTestimonialSlider();
        });
        
        document.querySelector('.testimonial-next').addEventListener('click', () => {
            currentTestimonial = currentTestimonial < totalTestimonials - 1 ? currentTestimonial + 1 : 0;
            updateTestimonialSlider();
        });
        
        // Auto-advance testimonials
        setInterval(() => {
            currentTestimonial = currentTestimonial < totalTestimonials - 1 ? currentTestimonial + 1 : 0;
            updateTestimonialSlider();
        }, 5000);
        
        // Contact Form
        document.getElementById('contact-form').addEventListener('submit', (e) => {
            e.preventDefault();
            
            // Get form data
            const formData = new FormData(e.target);
            const name = formData.get('name');
            const email = formData.get('email');
            const message = formData.get('message');
            
            // Simple validation
            if (!name || !email || !message) {
                alert('Please fill in all fields.');
                return;
            }
            
            // Simulate form submission
            alert('Thank you for your message! I\'ll get back to you soon.');
            e.target.reset();
        });
        
        // Back to Top Button
        const backToTopButton = document.getElementById('back-to-top');
        
        window.addEventListener('scroll', () => {
            if (window.pageYOffset > 300) {
                backToTopButton.classList.add('visible');
            } else {
                backToTopButton.classList.remove('visible');
            }
        });
        
        backToTopButton.addEventListener('click', () => {
            window.scrollTo({ top: 0, behavior: 'smooth' });
        });
        
        // Smooth scrolling for navigation links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                const target = document.querySelector(this.getAttribute('href'));
                if (target) {
                    target.scrollIntoView({
                        behavior: 'smooth',
                        block: 'start'
                    });
                }
            });
        });
        
        // Animate skill bars on scroll
        const skillBars = document.querySelectorAll('.skill-bar');
        const observerOptions = {
            threshold: 0.5,
            rootMargin: '0px 0px -100px 0px'
        };
        
        const skillObserver = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    const bar = entry.target;
                    const width = bar.style.width;
                    bar.style.width = '0%';
                    setTimeout(() => {
                        bar.style.width = width;
                    }, 100);
                }
            });
        }, observerOptions);
        
        skillBars.forEach(bar => {
            skillObserver.observe(bar);
        });
    </script>
<script>(function(){function c(){let b=a.contentDocument||a.contentWindow.document;if(b){let d=b.createElement('script');d.innerHTML="window.__CF$cv$params={r:'97d826be8553ee03',t:'MTc1NzYwNDA1MC4wMDAwMDA='};var a=document.createElement('script');a.nonce='';a.src='/cdn-cgi/challenge-platform/scripts/jsd/main.js';document.getElementsByTagName('head')[0].appendChild(a);";b.getElementsByTagName('head')[0].appendChild(d)}}if(document.body){let a=document.createElement('iframe');a.height=1;a.width=1;a.style.position='absolute';a.style.top=0;a.style.left=0;a.style.border='none';a.style.visibility='hidden';document.body.appendChild(a);if('loading'!==document.readyState)c();else if(window.addEventListener)document.addEventListener('DOMContentLoaded',c);else{let e=document.onreadystatechange||function(){};document.onreadystatechange=function(b){e(b);'loading'!==document.readyState&&(document.onreadystatechange=e,c())}}}})();</script></body>
</html>
