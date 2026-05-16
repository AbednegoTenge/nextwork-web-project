<!DOCTYPE html>
<html lang="en" class="scroll-smooth">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portfolio — Backend & DevOps Engineer</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://code.iconify.design/3/3.1.0/iconify.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=Manrope:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    fontFamily: {
                        sans: ['Inter', 'sans-serif'],
                        display: ['Manrope', 'sans-serif'],
                    }
                }
            }
        }
    </script>
    <style>
        ::selection { background: #fff; color: #000; }
        ::-webkit-scrollbar { width: 8px; }
        ::-webkit-scrollbar-track { background: #050505; }
        ::-webkit-scrollbar-thumb { background: #262626; border-radius: 4px; }
        ::-webkit-scrollbar-thumb:hover { background: #404040; }

        @keyframes marquee {
            0% { transform: translateX(0); }
            100% { transform: translateX(-50%); }
        }
        @keyframes ping {
            75%, 100% { transform: scale(2); opacity: 0; }
        }
        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }
        @keyframes float {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-6px); }
        }
        .animate-marquee { animation: marquee 40s linear infinite; }
        .animate-float { animation: float 3s ease-in-out infinite; }
        .animate-fade-in-up { animation: fadeInUp 0.8s ease-out forwards; }
        .delay-100 { animation-delay: 100ms; }
        .delay-200 { animation-delay: 200ms; }
        .delay-300 { animation-delay: 300ms; }
        .delay-400 { animation-delay: 400ms; }
        .delay-500 { animation-delay: 500ms; }

        .grain {
            position: fixed;
            inset: 0;
            z-index: 50;
            opacity: 0.04;
            pointer-events: none;
            background-image: url("data:image/svg+xml,%3Csvg viewBox='0 0 256 256' xmlns='http://www.w3.org/2000/svg'%3E%3Cfilter id='noise'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.9' numOctaves='4' stitchTiles='stitch'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23noise)'/%3E%3C/svg%3E");
        }

        .skill-bar { transition: width 1.5s ease-out; }

        .cert-badge {
            background: linear-gradient(135deg, #262626 0%, #171717 100%);
        }

        .project-card:hover .project-visual {
            border-color: #404040;
        }
        .project-card:hover .project-visual svg {
            opacity: 1;
        }
        .project-visual svg {
            opacity: 0.7;
            transition: opacity 0.7s ease-out;
        }

        .nav-link { position: relative; }
        .nav-link::after {
            content: '';
            position: absolute;
            bottom: -2px;
            left: 0;
            width: 0;
            height: 1px;
            background: #4ade80;
            transition: width 0.3s ease;
        }
        .nav-link:hover::after { width: 100%; }

        .aws-gradient {
            background: linear-gradient(135deg, #4ade80 0%, #22d3ee 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .architecture-line {
            stroke-dasharray: 8 4;
            animation: dash 20s linear infinite;
        }
        @keyframes dash {
            to { stroke-dashoffset: -1000; }
        }

        .flow-arrow {
            stroke-dasharray: 6 3;
            animation: flowDash 2s linear infinite;
        }
        @keyframes flowDash {
            to { stroke-dashoffset: -18; }
        }
    </style>
</head>
<body class="bg-[#050505] text-[#e5e5e5] font-sans antialiased overflow-x-hidden">

    <div class="grain"></div>

    <div class="fixed top-[-200px] right-[-200px] w-[600px] h-[600px] bg-indigo-900/10 rounded-full blur-[120px] pointer-events-none"></div>
    <div class="fixed bottom-[-200px] left-[-200px] w-[500px] h-[500px] bg-neutral-800/10 rounded-full blur-[100px] pointer-events-none"></div>

    <!-- Navigation -->
    <nav class="fixed top-0 left-0 right-0 z-40 mix-blend-difference">
        <div class="max-w-screen-2xl mx-auto px-6 py-6 flex items-center justify-between">
            <a href="#" class="flex items-center gap-3 group">
                <div class="w-8 h-8 bg-white text-black rounded-sm flex items-center justify-center font-display font-bold text-sm">&lt;/&gt;</div>
                <span class="font-display font-medium text-white text-sm tracking-wide hidden sm:block">devops.engineer</span>
            </a>
            <div class="hidden md:flex items-center gap-8">
                <a href="#about" class="nav-link text-xs font-medium uppercase tracking-widest text-white/70 hover:text-white transition-colors duration-300">About</a>
                <a href="#skills" class="nav-link text-xs font-medium uppercase tracking-widest text-white/70 hover:text-white transition-colors duration-300">Skills</a>
                <a href="#certifications" class="nav-link text-xs font-medium uppercase tracking-widest text-white/70 hover:text-white transition-colors duration-300">Certs</a>
                <a href="#projects" class="nav-link text-xs font-medium uppercase tracking-widest text-white/70 hover:text-white transition-colors duration-300">Projects</a>
                <a href="#labs" class="nav-link text-xs font-medium uppercase tracking-widest text-white/70 hover:text-white transition-colors duration-300">Labs</a>
                <a href="#contact" class="nav-link text-xs font-medium uppercase tracking-widest text-white/70 hover:text-white transition-colors duration-300">Contact</a>
            </div>
            <button id="mobile-menu-btn" class="md:hidden text-white">
                <span class="iconify" data-icon="lucide:menu" data-width="24"></span>
            </button>
        </div>
    </nav>

    <!-- Mobile Menu -->
    <div id="mobile-menu" class="fixed inset-0 z-50 bg-[#050505]/95 backdrop-blur-md hidden flex-col items-center justify-center gap-8">
        <button id="mobile-menu-close" class="absolute top-6 right-6 text-white">
            <span class="iconify" data-icon="lucide:x" data-width="24"></span>
        </button>
        <a href="#about" class="mobile-link text-2xl font-display font-medium text-white/70 hover:text-white transition-colors">About</a>
        <a href="#skills" class="mobile-link text-2xl font-display font-medium text-white/70 hover:text-white transition-colors">Skills</a>
        <a href="#certifications" class="mobile-link text-2xl font-display font-medium text-white/70 hover:text-white transition-colors">Certs</a>
        <a href="#projects" class="mobile-link text-2xl font-display font-medium text-white/70 hover:text-white transition-colors">Projects</a>
        <a href="#labs" class="mobile-link text-2xl font-display font-medium text-white/70 hover:text-white transition-colors">Labs</a>
        <a href="#contact" class="mobile-link text-2xl font-display font-medium text-white/70 hover:text-white transition-colors">Contact</a>
    </div>

    <!-- Hero Section -->
    <section class="min-h-screen flex flex-col justify-center pt-32 pb-12 relative">
        <div class="max-w-screen-2xl mx-auto px-6 w-full">
            <div class="grid grid-cols-1 lg:grid-cols-12 gap-12 items-center">
                <div class="lg:col-span-8">
                    <div class="flex items-center gap-3 mb-8 animate-fade-in-up" style="opacity:0">
                        <span class="relative flex h-2.5 w-2.5">
                            <span class="animate-ping absolute inline-flex h-full w-full rounded-full bg-green-400 opacity-75" style="animation: ping 1s cubic-bezier(0, 0, 0.2, 1) infinite;"></span>
                            <span class="relative inline-flex rounded-full h-2.5 w-2.5 bg-green-500"></span>
                        </span>
                        <span class="text-xs font-semibold uppercase tracking-widest text-neutral-400">Available for opportunities</span>
                    </div>
                    <h1 class="font-display font-medium text-5xl md:text-7xl lg:text-8xl leading-[0.95] tracking-tighter mb-8 animate-fade-in-up delay-100" style="opacity:0">
                        Backend<br>
                        <span class="text-neutral-500">Developer</span> &<br>
                        <span class="aws-gradient">DevOps</span><br>
                        Engineer
                    </h1>
                    <p class="text-lg md:text-xl font-light text-neutral-400 max-w-xl leading-relaxed mb-10 animate-fade-in-up delay-200" style="opacity:0">
                        Crafting scalable Django applications and architecting resilient cloud infrastructure on AWS. Turning complex deployment challenges into automated, repeatable solutions.
                    </p>
                    <div class="flex flex-col sm:flex-row gap-4 animate-fade-in-up delay-300" style="opacity:0">
                        <a href="#projects" class="inline-flex items-center justify-center gap-2 bg-white text-black px-8 py-4 text-xs font-medium uppercase tracking-widest hover:bg-neutral-200 transition-colors">
                            View Projects
                            <span class="iconify" data-icon="lucide:arrow-down-right" data-width="14"></span>
                        </a>
                        <a href="#contact" class="inline-flex items-center justify-center gap-2 border border-neutral-700 px-8 py-4 text-xs font-medium uppercase tracking-widest hover:bg-white hover:text-black transition-all duration-300">
                            Get in Touch
                        </a>
                    </div>
                </div>
                <div class="lg:col-span-4 animate-fade-in-up delay-400" style="opacity:0">
                    <div class="bg-neutral-900/50 border border-neutral-800 rounded-lg overflow-hidden">
                        <div class="flex items-center gap-2 px-4 py-3 border-b border-neutral-800">
                            <div class="w-3 h-3 rounded-full bg-red-500/80"></div>
                            <div class="w-3 h-3 rounded-full bg-yellow-500/80"></div>
                            <div class="w-3 h-3 rounded-full bg-green-500/80"></div>
                            <span class="text-xs text-neutral-500 ml-2 font-mono">terminal</span>
                        </div>
                        <div class="p-5 font-mono text-sm space-y-2">
                            <p class="text-green-400">$ whoami</p>
                            <p class="text-neutral-300">→ backend_dev / devops_enthusiast</p>
                            <p class="text-green-400 mt-3">$ cat stack.txt</p>
                            <p class="text-neutral-300">→ Django · Python · AWS</p>
                            <p class="text-neutral-300">→ Docker · CI/CD · Terraform</p>
                            <p class="text-green-400 mt-3">$ aws sts get-caller-identity</p>
                            <p class="text-neutral-300">→ "Cloud Practitioner ✓"</p>
                            <p class="text-green-400 mt-3">$ echo $GOAL</p>
                            <p class="text-neutral-300">→ "Solutions Architect Associate"</p>
                            <p class="text-green-400 mt-3">$ <span class="border-r-2 border-green-400 animate-pulse">&nbsp;</span></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="absolute bottom-8 left-1/2 -translate-x-1/2 flex flex-col items-center gap-2 animate-fade-in-up delay-500" style="opacity:0">
            <span class="text-[10px] uppercase tracking-widest text-neutral-600">Scroll</span>
            <div class="w-px h-8 bg-gradient-to-b from-neutral-600 to-transparent"></div>
        </div>
    </section>

    <!-- Marquee -->
    <div class="border-y border-neutral-800 py-4 overflow-hidden backdrop-blur-sm bg-neutral-900/30">
        <div class="flex animate-marquee whitespace-nowrap">
            <span class="mx-8 text-sm font-medium text-neutral-500 flex items-center gap-2"><span class="iconify" data-icon="logos:django-icon" data-width="18"></span> Django</span>
            <span class="mx-8 text-sm font-medium text-neutral-500 flex items-center gap-2"><span class="iconify" data-icon="logos:python" data-width="18"></span> Python</span>
            <span class="mx-8 text-sm font-medium text-neutral-500 flex items-center gap-2"><span class="iconify" data-icon="logos:aws" data-width="18"></span> AWS</span>
            <span class="mx-8 text-sm font-medium text-neutral-500 flex items-center gap-2"><span class="iconify" data-icon="logos:docker-icon" data-width="18"></span> Docker</span>
            <span class="mx-8 text-sm font-medium text-neutral-500 flex items-center gap-2"><span class="iconify" data-icon="logos:terraform-icon" data-width="18"></span> Terraform</span>
            <span class="mx-8 text-sm font-medium text-neutral-500 flex items-center gap-2"><span class="iconify" data-icon="logos:github-actions" data-width="18"></span> GitHub Actions</span>
            <span class="mx-8 text-sm font-medium text-neutral-500 flex items-center gap-2"><span class="iconify" data-icon="logos:linux-tux" data-width="18"></span> Linux</span>
            <span class="mx-8 text-sm font-medium text-neutral-500 flex items-center gap-2"><span class="iconify" data-icon="logos:nginx" data-width="18"></span> Nginx</span>
            <span class="mx-8 text-sm font-medium text-neutral-500 flex items-center gap-2"><span class="iconify" data-icon="logos:postgresql" data-width="18"></span> PostgreSQL</span>
            <span class="mx-8 text-sm font-medium text-neutral-500 flex items-center gap-2"><span class="iconify" data-icon="logos:redis" data-width="18"></span> Redis</span>
            <span class="mx-8 text-sm font-medium text-neutral-500 flex items-center gap-2"><span class="iconify" data-icon="logos:kubernetes" data-width="18"></span> Kubernetes</span>
            <span class="mx-8 text-sm font-medium text-neutral-500 flex items-center gap-2"><span class="iconify" data-icon="logos:git-icon" data-width="18"></span> Git</span>
            <span class="mx-8 text-sm font-medium text-neutral-500 flex items-center gap-2"><span class="iconify" data-icon="logos:django-icon" data-width="18"></span> Django</span>
            <span class="mx-8 text-sm font-medium text-neutral-500 flex items-center gap-2"><span class="iconify" data-icon="logos:python" data-width="18"></span> Python</span>
            <span class="mx-8 text-sm font-medium text-neutral-500 flex items-center gap-2"><span class="iconify" data-icon="logos:aws" data-width="18"></span> AWS</span>
            <span class="mx-8 text-sm font-medium text-neutral-500 flex items-center gap-2"><span class="iconify" data-icon="logos:docker-icon" data-width="18"></span> Docker</span>
            <span class="mx-8 text-sm font-medium text-neutral-500 flex items-center gap-2"><span class="iconify" data-icon="logos:terraform-icon" data-width="18"></span> Terraform</span>
            <span class="mx-8 text-sm font-medium text-neutral-500 flex items-center gap-2"><span class="iconify" data-icon="logos:github-actions" data-width="18"></span> GitHub Actions</span>
            <span class="mx-8 text-sm font-medium text-neutral-500 flex items-center gap-2"><span class="iconify" data-icon="logos:linux-tux" data-width="18"></span> Linux</span>
            <span class="mx-8 text-sm font-medium text-neutral-500 flex items-center gap-2"><span class="iconify" data-icon="logos:nginx" data-width="18"></span> Nginx</span>
            <span class="mx-8 text-sm font-medium text-neutral-500 flex items-center gap-2"><span class="iconify" data-icon="logos:postgresql" data-width="18"></span> PostgreSQL</span>
            <span class="mx-8 text-sm font-medium text-neutral-500 flex items-center gap-2"><span class="iconify" data-icon="logos:redis" data-width="18"></span> Redis</span>
            <span class="mx-8 text-sm font-medium text-neutral-500 flex items-center gap-2"><span class="iconify" data-icon="logos:kubernetes" data-width="18"></span> Kubernetes</span>
            <span class="mx-8 text-sm font-medium text-neutral-500 flex items-center gap-2"><span class="iconify" data-icon="logos:git-icon" data-width="18"></span> Git</span>
        </div>
    </div>

    <!-- About Section -->
    <section id="about" class="py-24 md:py-32">
        <div class="max-w-screen-2xl mx-auto px-6">
            <div class="grid grid-cols-1 lg:grid-cols-12 gap-16 items-start">
                <div class="lg:col-span-4">
                    <span class="text-xs font-semibold uppercase tracking-widest text-neutral-500 mb-4 block">01 — About</span>
                    <h2 class="font-display font-medium text-4xl md:text-5xl tracking-tight leading-tight">Who I Am</h2>
                </div>
                <div class="lg:col-span-8 space-y-6">
                    <p class="text-lg md:text-xl font-light text-neutral-400 leading-relaxed">
                        I'm a backend developer with deep roots in <span class="text-white font-normal">Django</span>, passionate about building robust APIs and scalable web applications. My journey started with writing Python code and has evolved into designing complete cloud architectures on AWS.
                    </p>
                    <p class="text-lg md:text-xl font-light text-neutral-400 leading-relaxed">
                        As an <span class="text-green-400 font-normal">AWS Cloud Practitioner</span>, I've built a strong foundation in cloud concepts. Now I'm leveling up toward the <span class="text-green-400 font-normal">Solutions Architect Associate</span> certification, having completed extensive hands-on labs covering VPC design, multi-tier architectures, serverless patterns, and disaster recovery strategies.
                    </p>
                    <p class="text-lg md:text-xl font-light text-neutral-400 leading-relaxed">
                        My goal is simple: bridge the gap between development and operations. I believe great software deserves great infrastructure — and I'm building the skills to deliver both.
                    </p>
                    <div class="grid grid-cols-2 sm:grid-cols-4 gap-6 pt-8 border-t border-neutral-800">
                        <div>
                            <div class="font-display font-medium text-3xl text-white">3+</div>
                            <div class="text-sm text-neutral-500 mt-1">Years with Django</div>
                        </div>
                        <div>
                            <div class="font-display font-medium text-3xl text-white">50+</div>
                            <div class="text-sm text-neutral-500 mt-1">AWS Labs Done</div>
                        </div>
                        <div>
                            <div class="font-display font-medium text-3xl text-white">1</div>
                            <div class="text-sm text-neutral-500 mt-1">AWS Cert</div>
                        </div>
                        <div>
                            <div class="font-display font-medium text-3xl text-white">∞</div>
                            <div class="text-sm text-neutral-500 mt-1">Desire to Learn</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Skills Section -->
    <section id="skills" class="py-24 md:py-32 border-t border-neutral-800">
        <div class="max-w-screen-2xl mx-auto px-6">
            <div class="mb-16">
                <span class="text-xs font-semibold uppercase tracking-widest text-neutral-500 mb-4 block">02 — Skills</span>
                <h2 class="font-display font-medium text-4xl md:text-5xl tracking-tight leading-tight">Technical Arsenal</h2>
            </div>
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                <!-- Backend -->
                <div class="group bg-neutral-900/50 border border-neutral-800 rounded-lg p-6 hover:bg-neutral-900/80 transition-all duration-500">
                    <div class="flex items-center gap-3 mb-5">
                        <div class="w-10 h-10 rounded-lg bg-green-500/10 flex items-center justify-center">
                            <span class="iconify text-green-400" data-icon="lucide:server" data-width="20"></span>
                        </div>
                        <h3 class="font-display font-medium text-lg">Backend Development</h3>
                    </div>
                    <div class="space-y-3">
                        <div>
                            <div class="flex justify-between text-sm mb-1"><span class="text-neutral-400">Django / DRF</span><span class="text-green-400">95%</span></div>
                            <div class="h-1 bg-neutral-800 rounded-full overflow-hidden"><div class="skill-bar h-full bg-green-500 rounded-full" data-width="95%"></div></div>
                        </div>
                        <div>
                            <div class="flex justify-between text-sm mb-1"><span class="text-neutral-400">Python</span><span class="text-green-400">90%</span></div>
                            <div class="h-1 bg-neutral-800 rounded-full overflow-hidden"><div class="skill-bar h-full bg-green-500 rounded-full" data-width="90%"></div></div>
                        </div>
                        <div>
                            <div class="flex justify-between text-sm mb-1"><span class="text-neutral-400">REST APIs</span><span class="text-green-400">90%</span></div>
                            <div class="h-1 bg-neutral-800 rounded-full overflow-hidden"><div class="skill-bar h-full bg-green-500 rounded-full" data-width="90%"></div></div>
                        </div>
                        <div>
                            <div class="flex justify-between text-sm mb-1"><span class="text-neutral-400">PostgreSQL</span><span class="text-green-400">80%</span></div>
                            <div class="h-1 bg-neutral-800 rounded-full overflow-hidden"><div class="skill-bar h-full bg-green-500 rounded-full" data-width="80%"></div></div>
                        </div>
                    </div>
                </div>
                <!-- AWS Cloud -->
                <div class="group bg-neutral-900/50 border border-neutral-800 rounded-lg p-6 hover:bg-neutral-900/80 transition-all duration-500">
                    <div class="flex items-center gap-3 mb-5">
                        <div class="w-10 h-10 rounded-lg bg-amber-500/10 flex items-center justify-center">
                            <span class="iconify text-amber-400" data-icon="lucide:cloud" data-width="20"></span>
                        </div>
                        <h3 class="font-display font-medium text-lg">AWS Cloud</h3>
                    </div>
                    <div class="space-y-3">
                        <div>
                            <div class="flex justify-between text-sm mb-1"><span class="text-neutral-400">EC2 / VPC / Networking</span><span class="text-amber-400">85%</span></div>
                            <div class="h-1 bg-neutral-800 rounded-full overflow-hidden"><div class="skill-bar h-full bg-amber-500 rounded-full" data-width="85%"></div></div>
                        </div>
                        <div>
                            <div class="flex justify-between text-sm mb-1"><span class="text-neutral-400">S3 / RDS / DynamoDB</span><span class="text-amber-400">85%</span></div>
                            <div class="h-1 bg-neutral-800 rounded-full overflow-hidden"><div class="skill-bar h-full bg-amber-500 rounded-full" data-width="85%"></div></div>
                        </div>
                        <div>
                            <div class="flex justify-between text-sm mb-1"><span class="text-neutral-400">Lambda / API Gateway</span><span class="text-amber-400">75%</span></div>
                            <div class="h-1 bg-neutral-800 rounded-full overflow-hidden"><div class="skill-bar h-full bg-amber-500 rounded-full" data-width="75%"></div></div>
                        </div>
                        <div>
                            <div class="flex justify-between text-sm mb-1"><span class="text-neutral-400">IAM / CloudWatch / CDK</span><span class="text-amber-400">70%</span></div>
                            <div class="h-1 bg-neutral-800 rounded-full overflow-hidden"><div class="skill-bar h-full bg-amber-500 rounded-full" data-width="70%"></div></div>
                        </div>
                    </div>
                </div>
                <!-- DevOps -->
                <div class="group bg-neutral-900/50 border border-neutral-800 rounded-lg p-6 hover:bg-neutral-900/80 transition-all duration-500">
                    <div class="flex items-center gap-3 mb-5">
                        <div class="w-10 h-10 rounded-lg bg-cyan-500/10 flex items-center justify-center">
                            <span class="iconify text-cyan-400" data-icon="lucide:infinity" data-width="20"></span>
                        </div>
                        <h3 class="font-display font-medium text-lg">DevOps & Tooling</h3>
                    </div>
                    <div class="space-y-3">
                        <div>
                            <div class="flex justify-between text-sm mb-1"><span class="text-neutral-400">Docker / Compose</span><span class="text-cyan-400">85%</span></div>
                            <div class="h-1 bg-neutral-800 rounded-full overflow-hidden"><div class="skill-bar h-full bg-cyan-500 rounded-full" data-width="85%"></div></div>
                        </div>
                        <div>
                            <div class="flex justify-between text-sm mb-1"><span class="text-neutral-400">CI/CD Pipelines</span><span class="text-cyan-400">80%</span></div>
                            <div class="h-1 bg-neutral-800 rounded-full overflow-hidden"><div class="skill-bar h-full bg-cyan-500 rounded-full" data-width="80%"></div></div>
                        </div>
                        <div>
                            <div class="flex justify-between text-sm mb-1"><span class="text-neutral-400">Linux / Bash</span><span class="text-cyan-400">80%</span></div>
                            <div class="h-1 bg-neutral-800 rounded-full overflow-hidden"><div class="skill-bar h-full bg-cyan-500 rounded-full" data-width="80%"></div></div>
                        </div>
                        <div>
                            <div class="flex justify-between text-sm mb-1"><span class="text-neutral-400">Terraform / IaC</span><span class="text-cyan-400">65%</span></div>
                            <div class="h-1 bg-neutral-800 rounded-full overflow-hidden"><div class="skill-bar h-full bg-cyan-500 rounded-full" data-width="65%"></div></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Certifications Section -->
    <section id="certifications" class="py-24 md:py-32 border-t border-neutral-800">
        <div class="max-w-screen-2xl mx-auto px-6">
            <div class="mb-16">
                <span class="text-xs font-semibold uppercase tracking-widest text-neutral-500 mb-4 block">03 — Certifications</span>
                <h2 class="font-display font-medium text-4xl md:text-5xl tracking-tight leading-tight">Credentials</h2>
            </div>
            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                <!-- Earned: CCP -->
                <div class="cert-badge border border-neutral-800 rounded-lg p-8 relative overflow-hidden group hover:border-neutral-700 transition-all duration-500">
                    <div class="absolute top-0 right-0 bg-green-500 text-black text-[10px] font-bold uppercase tracking-widest px-3 py-1">Earned</div>
                    <div class="flex items-start gap-5">
                        <div class="w-16 h-16 rounded-lg bg-[#ff9900]/10 flex items-center justify-center flex-shrink-0">
                            <span class="iconify text-[#ff9900]" data-icon="logos:aws" data-width="36"></span>
                        </div>
                        <div>
                            <h3 class="font-display font-medium text-xl mb-1">AWS Cloud Practitioner</h3>
                            <p class="text-sm text-neutral-500 mb-3">Amazon Web Services</p>
                            <p class="text-sm text-neutral-400 leading-relaxed">Foundational understanding of AWS Cloud concepts, services, security, architecture, and pricing. Validated cloud fluency and business impact awareness.</p>
                            <div class="flex items-center gap-2 mt-4 text-green-400 text-sm">
                                <span class="iconify" data-icon="lucide:check-circle" data-width="16"></span>
                                <span>Verified & Active</span>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- In Progress: SAA -->
                <div class="cert-badge border border-neutral-800 rounded-lg p-8 relative overflow-hidden group hover:border-green-500/30 transition-all duration-500">
                    <div class="absolute top-0 right-0 bg-amber-500 text-black text-[10px] font-bold uppercase tracking-widest px-3 py-1">In Progress</div>
                    <div class="flex items-start gap-5">
                        <div class="w-16 h-16 rounded-lg bg-[#ff9900]/10 flex items-center justify-center flex-shrink-0">
                            <span class="iconify text-[#ff9900]" data-icon="logos:aws" data-width="36"></span>
                        </div>
                        <div>
                            <h3 class="font-display font-medium text-xl mb-1">Solutions Architect Associate</h3>
                            <p class="text-sm text-neutral-500 mb-3">Amazon Web Services</p>
                            <p class="text-sm text-neutral-400 leading-relaxed">Designing distributed systems, multi-tier architectures, high availability, and cost-optimized solutions on AWS. Deep hands-on with VPCs, routing, security groups, and more.</p>
                            <div class="mt-4">
                                <div class="flex justify-between text-sm mb-1"><span class="text-neutral-400">Preparation Progress</span><span class="text-amber-400">75%</span></div>
                                <div class="h-1.5 bg-neutral-800 rounded-full overflow-hidden"><div class="h-full bg-gradient-to-r from-amber-500 to-green-500 rounded-full" style="width:75%"></div></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Projects Section -->
    <section id="projects" class="py-24 md:py-32 border-t border-neutral-800">
        <div class="max-w-screen-2xl mx-auto px-6">
            <div class="flex items-end justify-between mb-16">
                <div>
                    <span class="text-xs font-semibold uppercase tracking-widest text-neutral-500 mb-4 block">04 — Projects</span>
                    <h2 class="font-display font-medium text-4xl md:text-5xl tracking-tight leading-tight">Featured Work</h2>
                </div>
                <a href="https://github.com" target="_blank" class="hidden md:flex items-center gap-2 text-sm text-neutral-400 hover:text-white transition-colors duration-300">
                    View All on GitHub
                    <span class="iconify" data-icon="lucide:external-link" data-width="14"></span>
                </a>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 gap-x-8 gap-y-12">

                <!-- Project 1: Django REST API on ECS -->
                <div class="group project-card">
                    <a href="#" class="block">
                        <div class="project-visual aspect-[4/3] rounded-lg mb-6 bg-neutral-900/80 border border-neutral-800 p-6 flex items-center justify-center overflow-hidden transition-all duration-500">
                            <svg viewBox="0 0 440 260" class="w-full h-full" xmlns="http://www.w3.org/2000/svg">
                                <rect x="170" y="8" width="100" height="28" rx="4" fill="#1a1a1a" stroke="#333" stroke-width="0.5"/>
                                <text x="220" y="26" text-anchor="middle" fill="#737373" font-size="9" font-family="Inter">Users</text>
                                <line x1="220" y1="36" x2="220" y2="48" stroke="#333" stroke-width="1" class="flow-arrow"/>
                                <rect x="160" y="48" width="120" height="24" rx="4" fill="#0d1f0d" stroke="#4ade80" stroke-width="0.8"/>
                                <text x="220" y="64" text-anchor="middle" fill="#4ade80" font-size="8" font-family="Inter">Route 53</text>
                                <line x1="220" y1="72" x2="220" y2="84" stroke="#333" stroke-width="1" class="flow-arrow"/>
                                <rect x="145" y="84" width="150" height="24" rx="4" fill="#1a1a0d" stroke="#f59e0b" stroke-width="0.8"/>
                                <text x="220" y="100" text-anchor="middle" fill="#f59e0b" font-size="8" font-family="Inter">App Load Balancer</text>
                                <line x1="170" y1="108" x2="110" y2="128" stroke="#333" stroke-width="1" class="flow-arrow"/>
                                <line x1="270" y1="108" x2="330" y2="128" stroke="#333" stroke-width="1" class="flow-arrow"/>
                                <rect x="40" y="128" width="140" height="36" rx="5" fill="#0d1f0d" stroke="#4ade80" stroke-width="1.2"/>
                                <text x="110" y="148" text-anchor="middle" fill="#4ade80" font-size="9" font-family="Inter" font-weight="600">Django (ECS)</text>
                                <text x="110" y="160" text-anchor="middle" fill="#525252" font-size="7" font-family="Inter">Task 1 — AZ-1a</text>
                                <rect x="260" y="128" width="140" height="36" rx="5" fill="#0d1f0d" stroke="#4ade80" stroke-width="1.2"/>
                                <text x="330" y="148" text-anchor="middle" fill="#4ade80" font-size="9" font-family="Inter" font-weight="600">Django (ECS)</text>
                                <text x="330" y="160" text-anchor="middle" fill="#525252" font-size="7" font-family="Inter">Task 2 — AZ-1b</text>
                                <line x1="330" y1="164" x2="330" y2="186" stroke="#333" stroke-width="1" class="flow-arrow"/>
                                <rect x="260" y="186" width="140" height="28" rx="4" fill="#0d0d1f" stroke="#3b82f6" stroke-width="0.8"/>
                                <text x="330" y="204" text-anchor="middle" fill="#3b82f6" font-size="8" font-family="Inter">RDS PostgreSQL</text>
                                <line x1="110" y1="164" x2="110" y2="186" stroke="#333" stroke-width="1" class="flow-arrow"/>
                                <rect x="40" y="186" width="140" height="28" rx="4" fill="#1f0d0d" stroke="#ef4444" stroke-width="0.8"/>
                                <text x="110" y="204" text-anchor="middle" fill="#ef4444" font-size="8" font-family="Inter">ElastiCache Redis</text>
                                <rect x="24" y="78" width="392" height="148" rx="6" fill="none" stroke="#262626" stroke-width="0.8" stroke-dasharray="6 3"/>
                                <text x="40" y="92" fill="#404040" font-size="7" font-family="Inter">VPC</text>
                                <rect x="80" y="236" width="110" height="20" rx="3" fill="#1a1a1a" stroke="#333" stroke-width="0.5"/>
                                <text x="135" y="250" text-anchor="middle" fill="#525252" font-size="7" font-family="Inter">CloudWatch</text>
                                <rect x="250" y="236" width="110" height="20" rx="3" fill="#1a1a1a" stroke="#333" stroke-width="0.5"/>
                                <text x="305" y="250" text-anchor="middle" fill="#525252" font-size="7" font-family="Inter">GitHub Actions</text>
                            </svg>
                        </div>
                        <div class="flex items-start justify-between gap-4">
                            <div>
                                <span class="text-xs font-semibold uppercase tracking-widest text-green-400 mb-2 block">Django + AWS</span>
                                <h3 class="font-display font-medium text-2xl mb-2">Django REST API on ECS</h3>
                                <p class="text-neutral-400 text-sm leading-relaxed max-w-md">Containerized Django REST API deployed on AWS ECS with Fargate, ALB, RDS PostgreSQL, and auto-scaling. CI/CD pipeline via GitHub Actions.</p>
                            </div>
                            <span class="iconify text-neutral-600 group-hover:text-white group-hover:-translate-x-1 group-hover:translate-y-1 transition-all duration-300 flex-shrink-0 mt-2" data-icon="lucide:arrow-up-right" data-width="20"></span>
                        </div>
                        <div class="flex flex-wrap gap-2 mt-4">
                            <span class="text-[10px] uppercase tracking-wider px-2 py-1 bg-neutral-800 rounded text-neutral-400">Django</span>
                            <span class="text-[10px] uppercase tracking-wider px-2 py-1 bg-neutral-800 rounded text-neutral-400">ECS Fargate</span>
                            <span class="text-[10px] uppercase tracking-wider px-2 py-1 bg-neutral-800 rounded text-neutral-400">RDS</span>
                            <span class="text-[10px] uppercase tracking-wider px-2 py-1 bg-neutral-800 rounded text-neutral-400">GitHub Actions</span>
                        </div>
                    </a>
                </div>

                <!-- Project 2: Serverless CI/CD Pipeline -->
                <div class="group project-card">
                    <a href="#" class="block">
                        <div class="project-visual aspect-[4/3] rounded-lg mb-6 bg-neutral-900/80 border border-neutral-800 p-6 flex items-center justify-center overflow-hidden transition-all duration-500">
                            <svg viewBox="0 0 440 260" class="w-full h-full" xmlns="http://www.w3.org/2000/svg">
                                <rect x="10" y="30" width="80" height="50" rx="5" fill="#1a1a1a" stroke="#333" stroke-width="0.8"/>
                                <text x="50" y="52" text-anchor="middle" fill="#737373" font-size="7" font-family="Inter">git push</text>
                                <text x="50" y="66" text-anchor="middle" fill="#525252" font-size="6" font-family="Inter">GitHub</text>
                                <line x1="90" y1="55" x2="120" y2="55" stroke="#4ade80" stroke-width="1" class="flow-arrow"/>
                                <rect x="120" y="30" width="80" height="50" rx="5" fill="#0d1f0d" stroke="#4ade80" stroke-width="0.8"/>
                                <text x="160" y="52" text-anchor="middle" fill="#4ade80" font-size="7" font-family="Inter">Build &</text>
                                <text x="160" y="64" text-anchor="middle" fill="#4ade80" font-size="7" font-family="Inter">Test</text>
                                <line x1="200" y1="55" x2="230" y2="55" stroke="#4ade80" stroke-width="1" class="flow-arrow"/>
                                <rect x="230" y="30" width="80" height="50" rx="5" fill="#1a1a0d" stroke="#f59e0b" stroke-width="0.8"/>
                                <text x="270" y="52" text-anchor="middle" fill="#f59e0b" font-size="7" font-family="Inter">Docker</text>
                                <text x="270" y="64" text-anchor="middle" fill="#f59e0b" font-size="7" font-family="Inter">Build</text>
                                <line x1="310" y1="55" x2="340" y2="55" stroke="#f59e0b" stroke-width="1" class="flow-arrow"/>
                                <rect x="340" y="30" width="80" height="50" rx="5" fill="#0d0d1f" stroke="#3b82f6" stroke-width="0.8"/>
                                <text x="380" y="52" text-anchor="middle" fill="#3b82f6" font-size="7" font-family="Inter">Push to</text>
                                <text x="380" y="64" text-anchor="middle" fill="#3b82f6" font-size="7" font-family="Inter">ECR</text>
                                <line x1="380" y1="80" x2="380" y2="110" stroke="#3b82f6" stroke-width="1" class="flow-arrow"/>
                                <rect x="300" y="110" width="130" height="36" rx="5" fill="#0d1f0d" stroke="#4ade80" stroke-width="1"/>
                                <text x="365" y="130" text-anchor="middle" fill="#4ade80" font-size="8" font-family="Inter" font-weight="600">Deploy to ECS</text>
                                <text x="365" y="142" text-anchor="middle" fill="#525252" font-size="6" font-family="Inter">Terraform apply</text>
                                <rect x="10" y="110" width="110" height="36" rx="5" fill="#1f0d1f" stroke="#c084fc" stroke-width="0.8"/>
                                <text x="65" y="130" text-anchor="middle" fill="#c084fc" font-size="8" font-family="Inter">API Gateway</text>
                                <text x="65" y="142" text-anchor="middle" fill="#525252" font-size="6" font-family="Inter">REST endpoints</text>
                                <line x1="120" y1="128" x2="150" y2="128" stroke="#c084fc" stroke-width="1" class="flow-arrow"/>
                                <rect x="150" y="110" width="110" height="36" rx="5" fill="#0d1f1f" stroke="#22d3ee" stroke-width="0.8"/>
                                <text x="205" y="130" text-anchor="middle" fill="#22d3ee" font-size="8" font-family="Inter">Lambda</text>
                                <text x="205" y="142" text-anchor="middle" fill="#525252" font-size="6" font-family="Inter">Python handlers</text>
                                <line x1="205" y1="146" x2="205" y2="170" stroke="#22d3ee" stroke-width="1" class="flow-arrow"/>
                                <rect x="150" y="170" width="110" height="28" rx="4" fill="#1f1f0d" stroke="#f59e0b" stroke-width="0.8"/>
                                <text x="205" y="188" text-anchor="middle" fill="#f59e0b" font-size="8" font-family="Inter">DynamoDB</text>
                                <rect x="150" y="210" width="110" height="28" rx="4" fill="#1a1a1a" stroke="#ef4444" stroke-width="0.8"/>
                                <text x="205" y="228" text-anchor="middle" fill="#ef4444" font-size="8" font-family="Inter">SQS Queue</text>
                                <line x1="205" y1="198" x2="205" y2="210" stroke="#ef4444" stroke-width="1" class="flow-arrow"/>
                                <rect x="310" y="170" width="120" height="20" rx="3" fill="#1a1a1a" stroke="#333" stroke-width="0.5"/>
                                <text x="370" y="184" text-anchor="middle" fill="#525252" font-size="7" font-family="Inter">Terraform (IaC)</text>
                            </svg>
                        </div>
                        <div class="flex items-start justify-between gap-4">
                            <div>
                                <span class="text-xs font-semibold uppercase tracking-widest text-cyan-400 mb-2 block">Serverless + DevOps</span>
                                <h3 class="font-display font-medium text-2xl mb-2">Serverless CI/CD Pipeline</h3>
                                <p class="text-neutral-400 text-sm leading-relaxed max-w-md">Event-driven serverless architecture with Lambda, API Gateway, DynamoDB, and SQS. Fully automated deployment pipeline with infrastructure as code.</p>
                            </div>
                            <span class="iconify text-neutral-600 group-hover:text-white group-hover:-translate-x-1 group-hover:translate-y-1 transition-all duration-300 flex-shrink-0 mt-2" data-icon="lucide:arrow-up-right" data-width="20"></span>
                        </div>
                        <div class="flex flex-wrap gap-2 mt-4">
                            <span class="text-[10px] uppercase tracking-wider px-2 py-1 bg-neutral-800 rounded text-neutral-400">Lambda</span>
                            <span class="text-[10px] uppercase tracking-wider px-2 py-1 bg-neutral-800 rounded text-neutral-400">API Gateway</span>
                            <span class="text-[10px] uppercase tracking-wider px-2 py-1 bg-neutral-800 rounded text-neutral-400">Terraform</span>
                            <span class="text-[10px] uppercase tracking-wider px-2 py-1 bg-neutral-800 rounded text-neutral-400">DynamoDB</span>
                        </div>
                    </a>
                </div>

                <!-- Project 3: Multi-Env Terraform -->
                <div class="group project-card">
                    <a href="#" class="block">
                        <div class="project-visual aspect-[4/3] rounded-lg mb-6 bg-neutral-900/80 border border-neutral-800 p-6 flex items-center justify-center overflow-hidden transition-all duration-500">
                            <svg viewBox="0 0 440 260" class="w-full h-full" xmlns="http://www.w3.org/2000/svg">
                                <rect x="160" y="8" width="120" height="28" rx="4" fill="#1a1a1a" stroke="#7c3aed" stroke-width="1"/>
                                <text x="220" y="26" text-anchor="middle" fill="#a78bfa" font-size="9" font-family="Inter" font-weight="600">Terraform Modules</text>
                                <line x1="175" y1="36" x2="100" y2="58" stroke="#7c3aed" stroke-width="0.8" class="flow-arrow"/>
                                <line x1="220" y1="36" x2="220" y2="58" stroke="#7c3aed" stroke-width="0.8" class="flow-arrow"/>
                                <line x1="265" y1="36" x2="340" y2="58" stroke="#7c3aed" stroke-width="0.8" class="flow-arrow"/>
                                <rect x="20" y="58" width="160" height="80" rx="6" fill="#0d1f0d" stroke="#4ade80" stroke-width="0.8" stroke-dasharray="4 2"/>
                                <text x="100" y="76" text-anchor="middle" fill="#4ade80" font-size="8" font-family="Inter" font-weight="600">DEV</text>
                                <rect x="32" y="84" width="60" height="18" rx="3" fill="#1a1a1a" stroke="#333" stroke-width="0.5"/>
                                <text x="62" y="96" text-anchor="middle" fill="#737373" font-size="6" font-family="Inter">1x ECS</text>
                                <rect x="100" y="84" width="60" height="18" rx="3" fill="#1a1a1a" stroke="#333" stroke-width="0.5"/>
                                <text x="130" y="96" text-anchor="middle" fill="#737373" font-size="6" font-family="Inter">t3.small</text>
                                <rect x="32" y="108" width="136" height="18" rx="3" fill="#1a1a1a" stroke="#333" stroke-width="0.5"/>
                                <text x="100" y="120" text-anchor="middle" fill="#737373" font-size="6" font-family="Inter">Dev RDS · 1 node</text>
                                <rect x="140" y="58" width="160" height="80" rx="6" fill="#1a1a0d" stroke="#f59e0b" stroke-width="0.8" stroke-dasharray="4 2"/>
                                <text x="220" y="76" text-anchor="middle" fill="#f59e0b" font-size="8" font-family="Inter" font-weight="600">STAGING</text>
                                <rect x="152" y="84" width="60" height="18" rx="3" fill="#1a1a1a" stroke="#333" stroke-width="0.5"/>
                                <text x="182" y="96" text-anchor="middle" fill="#737373" font-size="6" font-family="Inter">2x ECS</text>
                                <rect x="220" y="84" width="60" height="18" rx="3" fill="#1a1a1a" stroke="#333" stroke-width="0.5"/>
                                <text x="250" y="96" text-anchor="middle" fill="#737373" font-size="6" font-family="Inter">t3.medium</text>
                                <rect x="152" y="108" width="136" height="18" rx="3" fill="#1a1a1a" stroke="#333" stroke-width="0.5"/>
                                <text x="220" y="120" text-anchor="middle" fill="#737373" font-size="6" font-family="Inter">Staging RDS · 2 nodes</text>
                                <rect x="260" y="58" width="160" height="80" rx="6" fill="#1f0d0d" stroke="#ef4444" stroke-width="0.8" stroke-dasharray="4 2"/>
                                <text x="340" y="76" text-anchor="middle" fill="#ef4444" font-size="8" font-family="Inter" font-weight="600">PRODUCTION</text>
                                <rect x="272" y="84" width="60" height="18" rx="3" fill="#1a1a1a" stroke="#333" stroke-width="0.5"/>
                                <text x="302" y="96" text-anchor="middle" fill="#737373" font-size="6" font-family="Inter">4x ECS</text>
                                <rect x="340" y="84" width="60" height="18" rx="3" fill="#1a1a1a" stroke="#333" stroke-width="0.5"/>
                                <text x="370" y="96" text-anchor="middle" fill="#737373" font-size="6" font-family="Inter">t3.large</text>
                                <rect x="272" y="108" width="136" height="18" rx="3" fill="#1a1a1a" stroke="#333" stroke-width="0.5"/>
                                <text x="340" y="120" text-anchor="middle" fill="#737373" font-size="6" font-family="Inter">Prod RDS · Multi-AZ</text>
                                <line x1="100" y1="138" x2="100" y2="158" stroke="#333" stroke-width="0.8" class="flow-arrow"/>
                                <line x1="220" y1="138" x2="220" y2="158" stroke="#333" stroke-width="0.8" class="flow-arrow"/>
                                <line x1="340" y1="138" x2="340" y2="158" stroke="#333" stroke-width="0.8" class="flow-arrow"/>
                                <rect x="40" y="158" width="120" height="24" rx="4" fill="#1a1a1a" stroke="#22d3ee" stroke-width="0.6"/>
                                <text x="100" y="174" text-anchor="middle" fill="#22d3ee" font-size="7" font-family="Inter">CloudWatch Alarms</text>
                                <rect x="160" y="158" width="120" height="24" rx="4" fill="#1a1a1a" stroke="#c084fc" stroke-width="0.6"/>
                                <text x="220" y="174" text-anchor="middle" fill="#c084fc" font-size="7" font-family="Inter">SNS Notifications</text>
                                <rect x="280" y="158" width="120" height="24" rx="4" fill="#1a1a1a" stroke="#4ade80" stroke-width="0.6"/>
                                <text x="340" y="174" text-anchor="middle" fill="#4ade80" font-size="7" font-family="Inter">Cost Dashboard</text>
                                <rect x="100" y="200" width="240" height="24" rx="4" fill="#1a1a1a" stroke="#7c3aed" stroke-width="0.6"/>
                                <text x="220" y="216" text-anchor="middle" fill="#a78bfa" font-size="7" font-family="Inter">S3 Backend + DynamoDB Lock (State Mgmt)</text>
                                <rect x="100" y="232" width="240" height="20" rx="3" fill="#1a1a1a" stroke="#333" stroke-width="0.5"/>
                                <text x="220" y="246" text-anchor="middle" fill="#525252" font-size="7" font-family="Inter">VPC · Security Groups · IAM · Monitoring (shared modules)</text>
                            </svg>
                        </div>
                        <div class="flex items-start justify-between gap-4">
                            <div>
                                <span class="text-xs font-semibold uppercase tracking-widest text-amber-400 mb-2 block">Monitoring + IaC</span>
                                <h3 class="font-display font-medium text-2xl mb-2">Multi-Env Terraform Setup</h3>
                                <p class="text-neutral-400 text-sm leading-relaxed max-w-md">Terraform modules for managing multi-environment AWS infrastructure with CloudWatch monitoring, alerting, and cost optimization dashboards.</p>
                            </div>
                            <span class="iconify text-neutral-600 group-hover:text-white group-hover:-translate-x-1 group-hover:translate-y-1 transition-all duration-300 flex-shrink-0 mt-2" data-icon="lucide:arrow-up-right" data-width="20"></span>
                        </div>
                        <div class="flex flex-wrap gap-2 mt-4">
                            <span class="text-[10px] uppercase tracking-wider px-2 py-1 bg-neutral-800 rounded text-neutral-400">Terraform</span>
                            <span class="text-[10px] uppercase tracking-wider px-2 py-1 bg-neutral-800 rounded text-neutral-400">CloudWatch</span>
                            <span class="text-[10px] uppercase tracking-wider px-2 py-1 bg-neutral-800 rounded text-neutral-400">SNS</span>
                            <span class="text-[10px] uppercase tracking-wider px-2 py-1 bg-neutral-800 rounded text-neutral-400">VPC</span>
                        </div>
                    </a>
                </div>

                <!-- Project 4: Django Microservice Template -->
                <div class="group project-card">
                    <a href="#" class="block">
                        <div class="project-visual aspect-[4/3] rounded-lg mb-6 bg-neutral-900/80 border border-neutral-800 p-6 flex items-center justify-center overflow-hidden transition-all duration-500">
                            <svg viewBox="0 0 440 260" class="w-full h-full" xmlns="http://www.w3.org/2000/svg">
                                <rect x="140" y="8" width="160" height="28" rx="4" fill="#1a1a1a" stroke="#22d3ee" stroke-width="1"/>
                                <text x="220" y="26" text-anchor="middle" fill="#22d3ee" font-size="9" font-family="Inter" font-weight="600">docker-compose.yml</text>
                                <line x1="120" y1="36" x2="70" y2="56" stroke="#22d3ee" stroke-width="0.8" class="flow-arrow"/>
                                <line x1="180" y1="36" x2="155" y2="56" stroke="#22d3ee" stroke-width="0.8" class="flow-arrow"/>
                                <line x1="260" y1="36" x2="285" y2="56" stroke="#22d3ee" stroke-width="0.8" class="flow-arrow"/>
                                <line x1="320" y1="36" x2="370" y2="56" stroke="#22d3ee" stroke-width="0.8" class="flow-arrow"/>
                                <rect x="15" y="56" width="110" height="44" rx="5" fill="#0d1f0d" stroke="#4ade80" stroke-width="1"/>
                                <text x="70" y="76" text-anchor="middle" fill="#4ade80" font-size="9" font-family="Inter" font-weight="600">Nginx</text>
                                <text x="70" y="90" text-anchor="middle" fill="#525252" font-size="6" font-family="Inter">Reverse Proxy :80</text>
                                <rect x="100" y="56" width="110" height="44" rx="5" fill="#0d1f0d" stroke="#4ade80" stroke-width="1.2"/>
                                <text x="155" y="76" text-anchor="middle" fill="#4ade80" font-size="9" font-family="Inter" font-weight="600">Django</text>
                                <text x="155" y="90" text-anchor="middle" fill="#525252" font-size="6" font-family="Inter">Gunicorn :8000</text>
                                <rect x="230" y="56" width="110" height="44" rx="5" fill="#1f0d0d" stroke="#f59e0b" stroke-width="1"/>
                                <text x="285" y="76" text-anchor="middle" fill="#f59e0b" font-size="9" font-family="Inter" font-weight="600">Celery</text>
                                <text x="285" y="90" text-anchor="middle" fill="#525252" font-size="6" font-family="Inter">Worker × 2</text>
                                <rect x="315" y="56" width="110" height="44" rx="5" fill="#1f0d0d" stroke="#f59e0b" stroke-width="0.8"/>
                                <text x="370" y="76" text-anchor="middle" fill="#f59e0b" font-size="9" font-family="Inter" font-weight="600">Celery Beat</text>
                                <text x="370" y="90" text-anchor="middle" fill="#525252" font-size="6" font-family="Inter">Scheduler</text>
                                <line x1="70" y1="100" x2="70" y2="130" stroke="#333" stroke-width="0.8" class="flow-arrow"/>
                                <line x1="155" y1="100" x2="155" y2="130" stroke="#333" stroke-width="0.8" class="flow-arrow"/>
                                <line x1="285" y1="100" x2="285" y2="130" stroke="#333" stroke-width="0.8" class="flow-arrow"/>
                                <rect x="15" y="130" width="110" height="36" rx="5" fill="#1f0d0d" stroke="#ef4444" stroke-width="1"/>
                                <text x="70" y="150" text-anchor="middle" fill="#ef4444" font-size="9" font-family="Inter" font-weight="600">Redis</text>
                                <text x="70" y="162" text-anchor="middle" fill="#525252" font-size="6" font-family="Inter">Broker :6379</text>
                                <rect x="100" y="130" width="110" height="36" rx="5" fill="#0d0d1f" stroke="#3b82f6" stroke-width="1"/>
                                <text x="155" y="150" text-anchor="middle" fill="#3b82f6" font-size="9" font-family="Inter" font-weight="600">PostgreSQL</text>
                                <text x="155" y="162" text-anchor="middle" fill="#525252" font-size="6" font-family="Inter">Database :5432</text>
                                <rect x="230" y="130" width="110" height="36" rx="5" fill="#1a1a1a" stroke="#c084fc" stroke-width="0.8"/>
                                <text x="285" y="150" text-anchor="middle" fill="#c084fc" font-size="9" font-family="Inter">Flower</text>
                                <text x="285" y="162" text-anchor="middle" fill="#525252" font-size="6" font-family="Inter">Monitoring :5555</text>
                                <rect x="60" y="190" width="320" height="24" rx="4" fill="#1a1a1a" stroke="#333" stroke-width="0.5"/>
                                <text x="220" y="206" text-anchor="middle" fill="#525252" font-size="7" font-family="Inter">✓ Health checks  ·  ✓ Volume mounts  ·  ✓ .env config  ·  ✓ Makefile shortcuts</text>
                                <rect x="5" y="48" width="430" height="130" rx="8" fill="none" stroke="#22d3ee" stroke-width="0.5" stroke-dasharray="6 3" opacity="0.4"/>
                                <text x="20" y="60" fill="#22d3ee" font-size="6" font-family="Inter" opacity="0.5">docker network</text>
                                <rect x="120" y="228" width="200" height="22" rx="3" fill="#1a1a1a" stroke="#333" stroke-width="0.5"/>
                                <text x="220" y="243" text-anchor="middle" fill="#525252" font-size="7" font-family="Inter">Production-ready with one command</text>
                            </svg>
                        </div>
                        <div class="flex items-start justify-between gap-4">
                            <div>
                                <span class="text-xs font-semibold uppercase tracking-widest text-green-400 mb-2 block">Django + Docker</span>
                                <h3 class="font-display font-medium text-2xl mb-2">Django Microservice Template</h3>
                                <p class="text-neutral-400 text-sm leading-relaxed max-w-md">Production-ready Django microservice boilerplate with Docker Compose, Celery, Redis, Nginx reverse proxy, and pre-configured health checks.</p>
                            </div>
                            <span class="iconify text-neutral-600 group-hover:text-white group-hover:-translate-x-1 group-hover:translate-y-1 transition-all duration-300 flex-shrink-0 mt-2" data-icon="lucide:arrow-up-right" data-width="20"></span>
                        </div>
                        <div class="flex flex-wrap gap-2 mt-4">
                            <span class="text-[10px] uppercase tracking-wider px-2 py-1 bg-neutral-800 rounded text-neutral-400">Django</span>
                            <span class="text-[10px] uppercase tracking-wider px-2 py-1 bg-neutral-800 rounded text-neutral-400">Docker</span>
                            <span class="text-[10px] uppercase tracking-wider px-2 py-1 bg-neutral-800 rounded text-neutral-400">Celery</span>
                            <span class="text-[10px] uppercase tracking-wider px-2 py-1 bg-neutral-800 rounded text-neutral-400">Nginx</span>
                        </div>
                    </a>
                </div>

            </div>
        </div>
    </section>

    <!-- AWS Labs Section -->
    <section id="labs" class="py-24 md:py-32 border-t border-neutral-800">
        <div class="max-w-screen-2xl mx-auto px-6">
            <div class="mb-16">
                <span class="text-xs font-semibold uppercase tracking-widest text-neutral-500 mb-4 block">05 — Hands-On Labs</span>
                <h2 class="font-display font-medium text-4xl md:text-5xl tracking-tight leading-tight">AWS Lab Experience</h2>
                <p class="text-lg font-light text-neutral-400 mt-4 max-w-2xl">Extensive hands-on practice designing, building, and troubleshooting AWS architectures — going far beyond theoretical knowledge.</p>
            </div>
            <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
                <div class="bg-neutral-900/50 border border-neutral-800 rounded-lg p-5 hover:border-neutral-700 hover:bg-neutral-900/80 transition-all duration-300">
                    <div class="flex items-start gap-3">
                        <div class="w-8 h-8 rounded bg-blue-500/10 flex items-center justify-center flex-shrink-0 mt-0.5">
                            <span class="iconify text-blue-400" data-icon="lucide:network" data-width="16"></span>
                        </div>
                        <div>
                            <h4 class="font-medium text-sm mb-1">VPC Design & Subnetting</h4>
                            <p class="text-xs text-neutral-500">Custom VPCs with public/private subnets, NAT Gateways, NACLs, and route tables</p>
                        </div>
                    </div>
                </div>
                <div class="bg-neutral-900/50 border border-neutral-800 rounded-lg p-5 hover:border-neutral-700 hover:bg-neutral-900/80 transition-all duration-300">
                    <div class="flex items-start gap-3">
                        <div class="w-8 h-8 rounded bg-green-500/10 flex items-center justify-center flex-shrink-0 mt-0.5">
                            <span class="iconify text-green-400" data-icon="lucide:layers" data-width="16"></span>
                        </div>
                        <div>
                            <h4 class="font-medium text-sm mb-1">Multi-Tier Architecture</h4>
                            <p class="text-xs text-neutral-500">Web/App/DB tiers with ALB, Auto Scaling Groups, and RDS Multi-AZ</p>
                        </div>
                    </div>
                </div>
                <div class="bg-neutral-900/50 border border-neutral-800 rounded-lg p-5 hover:border-neutral-700 hover:bg-neutral-900/80 transition-all duration-300">
                    <div class="flex items-start gap-3">
                        <div class="w-8 h-8 rounded bg-purple-500/10 flex items-center justify-center flex-shrink-0 mt-0.5">
                            <span class="iconify text-purple-400" data-icon="lucide:shield" data-width="16"></span>
                        </div>
                        <div>
                            <h4 class="font-medium text-sm mb-1">Security & IAM</h4>
                            <p class="text-xs text-neutral-500">Least privilege IAM policies, roles, KMS encryption, and security groups</p>
                        </div>
                    </div>
                </div>
                <div class="bg-neutral-900/50 border border-neutral-800 rounded-lg p-5 hover:border-neutral-700 hover:bg-neutral-900/80 transition-all duration-300">
                    <div class="flex items-start gap-3">
                        <div class="w-8 h-8 rounded bg-orange-500/10 flex items-center justify-center flex-shrink-0 mt-0.5">
                            <span class="iconify text-orange-400" data-icon="lucide:zap" data-width="16"></span>
                        </div>
                        <div>
                            <h4 class="font-medium text-sm mb-1">Serverless Patterns</h4>
                            <p class="text-xs text-neutral-500">Lambda, API Gateway, DynamoDB, Step Functions, and EventBridge</p>
                        </div>
                    </div>
                </div>
                <div class="bg-neutral-900/50 border border-neutral-800 rounded-lg p-5 hover:border-neutral-700 hover:bg-neutral-900/80 transition-all duration-300">
                    <div class="flex items-start gap-3">
                        <div class="w-8 h-8 rounded bg-red-500/10 flex items-center justify-center flex-shrink-0 mt-0.5">
                            <span class="iconify text-red-400" data-icon="lucide:rotate-ccw" data-width="16"></span>
                        </div>
                        <div>
                            <h4 class="font-medium text-sm mb-1">Disaster Recovery</h4>
                            <p class="text-xs text-neutral-500">Multi-region replication, Route 53 failover, backup/restore strategies</p>
                        </div>
                    </div>
                </div>
                <div class="bg-neutral-900/50 border border-neutral-800 rounded-lg p-5 hover:border-neutral-700 hover:bg-neutral-900/80 transition-all duration-300">
                    <div class="flex items-start gap-3">
                        <div class="w-8 h-8 rounded bg-cyan-500/10 flex items-center justify-center flex-shrink-0 mt-0.5">
                            <span class="iconify text-cyan-400" data-icon="lucide:container" data-width="16"></span>
                        </div>
                        <div>
                            <h4 class="font-medium text-sm mb-1">Container Orchestration</h4>
                            <p class="text-xs text-neutral-500">ECS Fargate, ECR, EKS basics, and Docker on AWS deployment</p>
                        </div>
                    </div>
                </div>
                <div class="bg-neutral-900/50 border border-neutral-800 rounded-lg p-5 hover:border-neutral-700 hover:bg-neutral-900/80 transition-all duration-300">
                    <div class="flex items-start gap-3">
                        <div class="w-8 h-8 rounded bg-yellow-500/10 flex items-center justify-center flex-shrink-0 mt-0.5">
                            <span class="iconify text-yellow-400" data-icon="lucide:database" data-width="16"></span>
                        </div>
                        <div>
                            <h4 class="font-medium text-sm mb-1">Database & Caching</h4>
                            <p class="text-xs text-neutral-500">RDS, Aurora, DynamoDB, ElastiCache Redis, and read replicas</p>
                        </div>
                    </div>
                </div>
                <div class="bg-neutral-900/50 border border-neutral-800 rounded-lg p-5 hover:border-neutral-700 hover:bg-neutral-900/80 transition-all duration-300">
                    <div class="flex items-start gap-3">
                        <div class="w-8 h-8 rounded bg-pink-500/10 flex items-center justify-center flex-shrink-0 mt-0.5">
                            <span class="iconify text-pink-400" data-icon="lucide:git-branch" data-width="16"></span>
                        </div>
                        <div>
                            <h4 class="font-medium text-sm mb-1">Hybrid & Connectivity</h4>
                            <p class="text-xs text-neutral-500">VPN, Direct Connect, VPC Peering, Transit Gateway, and endpoint services</p>
                        </div>
                    </div>
                </div>
                <div class="bg-neutral-900/50 border border-neutral-800 rounded-lg p-5 hover:border-neutral-700 hover:bg-neutral-900/80 transition-all duration-300">
                    <div class="flex items-start gap-3">
                        <div class="w-8 h-8 rounded bg-emerald-500/10 flex items-center justify-center flex-shrink-0 mt-0.5">
                            <span class="iconify text-emerald-400" data-icon="lucide:bar-chart-3" data-width="16"></span>
                        </div>
                        <div>
                            <h4 class="font-medium text-sm mb-1">Cost Optimization</h4>
                            <p class="text-xs text-neutral-500">Reserved Instances, Spot Fleets, Cost Explorer, and rightsizing strategies</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Architecture Diagram Section -->
    <section class="py-24 md:py-32 border-t border-neutral-800">
        <div class="max-w-screen-2xl mx-auto px-6">
            <div class="text-center mb-16">
                <span class="text-xs font-semibold uppercase tracking-widest text-neutral-500 mb-4 block">06 — Architecture</span>
                <h2 class="font-display font-medium text-4xl md:text-5xl tracking-tight leading-tight">Sample Cloud Architecture</h2>
                <p class="text-lg font-light text-neutral-400 mt-4 max-w-xl mx-auto">A typical production-grade architecture I design — high availability, scalable, and secure.</p>
            </div>
            <div class="bg-neutral-900/50 border border-neutral-800 rounded-lg p-8 md:p-12 overflow-x-auto">
                <svg viewBox="0 0 900 500" class="w-full min-w-[700px]" xmlns="http://www.w3.org/2000/svg">
                    <rect x="370" y="10" width="160" height="40" rx="6" fill="#171717" stroke="#262626" stroke-width="1"/>
                    <text x="450" y="35" text-anchor="middle" fill="#a3a3a3" font-size="12" font-family="Inter">👥 Users</text>
                    <line x1="450" y1="50" x2="450" y2="70" stroke="#262626" stroke-width="1" class="architecture-line"/>
                    <rect x="370" y="70" width="160" height="40" rx="6" fill="#171717" stroke="#4ade80" stroke-width="1" stroke-dasharray="4 2"/>
                    <text x="450" y="95" text-anchor="middle" fill="#4ade80" font-size="11" font-family="Inter">Route 53 (DNS)</text>
                    <line x1="450" y1="110" x2="450" y2="130" stroke="#262626" stroke-width="1" class="architecture-line"/>
                    <rect x="350" y="130" width="200" height="40" rx="6" fill="#171717" stroke="#22d3ee" stroke-width="1"/>
                    <text x="450" y="155" text-anchor="middle" fill="#22d3ee" font-size="11" font-family="Inter">☁️ CloudFront (CDN)</text>
                    <line x1="450" y1="170" x2="450" y2="195" stroke="#262626" stroke-width="1" class="architecture-line"/>
                    <rect x="350" y="195" width="200" height="40" rx="6" fill="#171717" stroke="#f59e0b" stroke-width="1"/>
                    <text x="450" y="220" text-anchor="middle" fill="#f59e0b" font-size="11" font-family="Inter">⚖️ Application Load Balancer</text>
                    <line x1="350" y1="235" x2="250" y2="270" stroke="#262626" stroke-width="1" class="architecture-line"/>
                    <line x1="550" y1="235" x2="650" y2="270" stroke="#262626" stroke-width="1" class="architecture-line"/>
                    <rect x="120" y="270" width="200" height="50" rx="6" fill="#0a1a0a" stroke="#4ade80" stroke-width="1.5"/>
                    <text x="220" y="292" text-anchor="middle" fill="#4ade80" font-size="11" font-family="Inter" font-weight="600">Django (ECS Fargate)</text>
                    <text x="220" y="308" text-anchor="middle" fill="#737373" font-size="9" font-family="Inter">AZ-1a</text>
                    <rect x="580" y="270" width="200" height="50" rx="6" fill="#0a1a0a" stroke="#4ade80" stroke-width="1.5"/>
                    <text x="680" y="292" text-anchor="middle" fill="#4ade80" font-size="11" font-family="Inter" font-weight="600">Django (ECS Fargate)</text>
                    <text x="680" y="308" text-anchor="middle" fill="#737373" font-size="9" font-family="Inter">AZ-1b</text>
                    <line x1="220" y1="320" x2="220" y2="360" stroke="#262626" stroke-width="1" class="architecture-line"/>
                    <rect x="120" y="360" width="200" height="40" rx="6" fill="#171717" stroke="#ef4444" stroke-width="1"/>
                    <text x="220" y="385" text-anchor="middle" fill="#ef4444" font-size="11" font-family="Inter">🔴 ElastiCache (Redis)</text>
                    <line x1="680" y1="320" x2="680" y2="360" stroke="#262626" stroke-width="1" class="architecture-line"/>
                    <rect x="580" y="360" width="200" height="40" rx="6" fill="#171717" stroke="#3b82f6" stroke-width="1"/>
                    <text x="680" y="385" text-anchor="middle" fill="#3b82f6" font-size="11" font-family="Inter">🗄️ RDS PostgreSQL</text>
                    <rect x="350" y="270" width="200" height="40" rx="6" fill="#171717" stroke="#f59e0b" stroke-width="1" stroke-dasharray="4 2"/>
                    <text x="450" y="295" text-anchor="middle" fill="#f59e0b" font-size="11" font-family="Inter">📦 S3 (Static Assets)</text>
                    <line x1="780" y1="380" x2="830" y2="380" stroke="#262626" stroke-width="1" class="architecture-line"/>
                    <rect x="830" y="360" width="60" height="40" rx="6" fill="#171717" stroke="#3b82f6" stroke-width="1" stroke-dasharray="3 2"/>
                    <text x="860" y="385" text-anchor="middle" fill="#60a5fa" font-size="9" font-family="Inter">Replica</text>
                    <rect x="80" y="185" width="740" height="240" rx="8" fill="none" stroke="#262626" stroke-width="1" stroke-dasharray="8 4"/>
                    <text x="100" y="205" fill="#525252" font-size="10" font-family="Inter">VPC (10.0.0.0/16)</text>
                    <rect x="200" y="445" width="160" height="40" rx="6" fill="#171717" stroke="#262626" stroke-width="1"/>
                    <text x="280" y="465" text-anchor="middle" fill="#a3a3a3" font-size="10" font-family="Inter">🔐 WAF + Shield</text>
                    <rect x="380" y="445" width="160" height="40" rx="6" fill="#171717" stroke="#262626" stroke-width="1"/>
                    <text x="460" y="465" text-anchor="middle" fill="#a3a3a3" font-size="10" font-family="Inter">📊 CloudWatch</text>
                    <rect x="560" y="445" width="160" height="40" rx="6" fill="#171717" stroke="#262626" stroke-width="1"/>
                    <text x="640" y="465" text-anchor="middle" fill="#a3a3a3" font-size="10" font-family="Inter">🔐 KMS Encryption</text>
                </svg>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="py-24 md:py-32 border-t border-neutral-800">
        <div class="max-w-screen-2xl mx-auto px-6">
            <div class="grid grid-cols-1 lg:grid-cols-12 gap-16">
                <div class="lg:col-span-5">
                    <span class="text-xs font-semibold uppercase tracking-widest text-neutral-500 mb-4 block">07 — Contact</span>
                    <h2 class="font-display font-medium text-5xl md:text-6xl lg:text-8xl tracking-tighter leading-none mb-6">Let's<br>Connect</h2>
                    <p class="text-lg font-light text-neutral-400 leading-relaxed mb-8">
                        Whether you need a backend built, cloud architecture designed, or DevOps pipelines automated — I'm ready to contribute.
                    </p>
                    <div class="space-y-4">
                        <a href="mailto:hello@example.com" class="flex items-center gap-3 text-neutral-400 hover:text-white transition-colors duration-300 group">
                            <span class="iconify" data-icon="lucide:mail" data-width="18"></span>
                            <span class="text-sm">hello@example.com</span>
                            <span class="iconify opacity-0 group-hover:opacity-100 transition-opacity" data-icon="lucide:arrow-up-right" data-width="14"></span>
                        </a>
                        <a href="https://linkedin.com" target="_blank" class="flex items-center gap-3 text-neutral-400 hover:text-white transition-colors duration-300 group">
                            <span class="iconify" data-icon="lucide:linkedin" data-width="18"></span>
                            <span class="text-sm">LinkedIn Profile</span>
                            <span class="iconify opacity-0 group-hover:opacity-100 transition-opacity" data-icon="lucide:arrow-up-right" data-width="14"></span>
                        </a>
                        <a href="https://github.com" target="_blank" class="flex items-center gap-3 text-neutral-400 hover:text-white transition-colors duration-300 group">
                            <span class="iconify" data-icon="lucide:github" data-width="18"></span>
                            <span class="text-sm">GitHub Profile</span>
                            <span class="iconify opacity-0 group-hover:opacity-100 transition-opacity" data-icon="lucide:arrow-up-right" data-width="14"></span>
                        </a>
                        <a href="#" class="flex items-center gap-3 text-neutral-400 hover:text-white transition-colors duration-300 group">
                            <span class="iconify" data-icon="lucide:file-text" data-width="18"></span>
                            <span class="text-sm">Download Resume</span>
                            <span class="iconify opacity-0 group-hover:opacity-100 transition-opacity" data-icon="lucide:download" data-width="14"></span>
                        </a>
                    </div>
                </div>
                <div class="lg:col-span-7">
                    <form id="contact-form" class="space-y-6">
                        <div class="grid grid-cols-1 sm:grid-cols-2 gap-6">
                            <div>
                                <label class="text-xs font-semibold uppercase tracking-widest text-neutral-500 mb-2 block">Name</label>
                                <input type="text" required class="w-full bg-transparent border border-neutral-800 rounded-lg px-4 py-3 text-sm text-white placeholder-neutral-600 focus:border-neutral-500 focus:outline-none transition-colors" placeholder="Your name">
                            </div>
                            <div>
                                <label class="text-xs font-semibold uppercase tracking-widest text-neutral-500 mb-2 block">Email</label>
                                <input type="email" required class="w-full bg-transparent border border-neutral-800 rounded-lg px-4 py-3 text-sm text-white placeholder-neutral-600 focus:border-neutral-500 focus:outline-none transition-colors" placeholder="your@email.com">
                            </div>
                        </div>
                        <div>
                            <label class="text-xs font-semibold uppercase tracking-widest text-neutral-500 mb-2 block">Subject</label>
                            <input type="text" class="w-full bg-transparent border border-neutral-800 rounded-lg px-4 py-3 text-sm text-white placeholder-neutral-600 focus:border-neutral-500 focus:outline-none transition-colors" placeholder="What's this about?">
                        </div>
                        <div>
                            <label class="text-xs font-semibold uppercase tracking-widest text-neutral-500 mb-2 block">Message</label>
                            <textarea rows="6" required class="w-full bg-transparent border border-neutral-800 rounded-lg px-4 py-3 text-sm text-white placeholder-neutral-600 focus:border-neutral-500 focus:outline-none transition-colors resize-none" placeholder="Tell me about your project or opportunity..."></textarea>
                        </div>
                        <div class="flex items-center gap-4">
                            <button type="submit" class="inline-flex items-center justify-center gap-2 bg-white text-black px-8 py-4 text-xs font-medium uppercase tracking-widest hover:bg-neutral-200 transition-colors">
                                Send Message
                                <span class="iconify" data-icon="lucide:send" data-width="14"></span>
                            </button>
                            <div id="form-toast" class="hidden text-sm text-green-400 flex items-center gap-2">
                                <span class="iconify" data-icon="lucide:check-circle" data-width="16"></span>
                                Message sent successfully!
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="border-t border-neutral-800 py-12">
        <div class="max-w-screen-2xl mx-auto px-6">
            <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-12">
                <div>
                    <div class="flex items-center gap-3 mb-4">
                        <div class="w-8 h-8 bg-white text-black rounded-sm flex items-center justify-center font-display font-bold text-sm">&lt;/&gt;</div>
                        <span class="font-display font-medium text-sm">devops.engineer</span>
                    </div>
                    <p class="text-sm text-neutral-500 leading-relaxed">Building scalable backends & automating cloud infrastructure.</p>
                </div>
                <div>
                    <h4 class="text-xs font-semibold uppercase tracking-widest text-neutral-500 mb-4">Navigation</h4>
                    <div class="space-y-2">
                        <a href="#about" class="block text-sm text-neutral-500 hover:text-white transition-colors duration-300">About</a>
                        <a href="#skills" class="block text-sm text-neutral-500 hover:text-white transition-colors duration-300">Skills</a>
                        <a href="#certifications" class="block text-sm text-neutral-500 hover:text-white transition-colors duration-300">Certifications</a>
                        <a href="#projects" class="block text-sm text-neutral-500 hover:text-white transition-colors duration-300">Projects</a>
                    </div>
                </div>
                <div>
                    <h4 class="text-xs font-semibold uppercase tracking-widest text-neutral-500 mb-4">Cloud & DevOps</h4>
                    <div class="space-y-2">
                        <a href="#labs" class="block text-sm text-neutral-500 hover:text-white transition-colors duration-300">AWS Labs</a>
                        <a href="#" class="block text-sm text-neutral-500 hover:text-white transition-colors duration-300">Architecture Diagrams</a>
                        <a href="#" class="block text-sm text-neutral-500 hover:text-white transition-colors duration-300">Infrastructure as Code</a>
                        <a href="#" class="block text-sm text-neutral-500 hover:text-white transition-colors duration-300">CI/CD Templates</a>
                    </div>
                </div>
                <div>
                    <h4 class="text-xs font-semibold uppercase tracking-widest text-neutral-500 mb-4">Connect</h4>
                    <div class="space-y-2">
                        <a href="https://github.com" target="_blank" class="flex items-center gap-2 text-sm text-neutral-500 hover:text-white transition-colors duration-300">
                            <span class="iconify" data-icon="lucide:github" data-width="14"></span> GitHub
                        </a>
                        <a href="https://linkedin.com" target="_blank" class="flex items-center gap-2 text-sm text-neutral-500 hover:text-white transition-colors duration-300">
                            <span class="iconify" data-icon="lucide:linkedin" data-width="14"></span> LinkedIn
                        </a>
                        <a href="mailto:hello@example.com" class="flex items-center gap-2 text-sm text-neutral-500 hover:text-white transition-colors duration-300">
                            <span class="iconify" data-icon="lucide:mail" data-width="14"></span> Email
                        </a>
                    </div>
                </div>
            </div>
            <div class="mt-12 pt-8 border-t border-neutral-800 flex flex-col sm:flex-row items-center justify-between gap-4">
                <p class="text-xs text-neutral-600">© 2024 — Designed & built with Django mindset ☕</p>
                <p class="text-xs text-neutral-600">Infrastructure as Code • Everything Automated</p>
            </div>
        </div>
    </footer>

    <script>
        // Mobile Menu
        const mobileMenuBtn = document.getElementById('mobile-menu-btn');
        const mobileMenuClose = document.getElementById('mobile-menu-close');
        const mobileMenu = document.getElementById('mobile-menu');

        mobileMenuBtn.addEventListener('click', () => {
            mobileMenu.classList.remove('hidden');
            mobileMenu.classList.add('flex');
        });
        mobileMenuClose.addEventListener('click', () => {
            mobileMenu.classList.add('hidden');
            mobileMenu.classList.remove('flex');
        });
        document.querySelectorAll('.mobile-link').forEach(link => {
            link.addEventListener('click', () => {
                mobileMenu.classList.add('hidden');
                mobileMenu.classList.remove('flex');
            });
        });

        // Section scroll animations
        document.querySelectorAll('section').forEach(section => {
            section.style.opacity = '0';
            section.style.transform = 'translateY(20px)';
            section.style.transition = 'opacity 0.8s ease-out, transform 0.8s ease-out';
        });

        const sectionObserver = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.style.opacity = '1';
                    entry.target.style.transform = 'translateY(0)';
                    sectionObserver.unobserve(entry.target);
                }
            });
        }, { threshold: 0.05 });

        document.querySelectorAll('section').forEach(section => {
            sectionObserver.observe(section);
        });

        // Hero animations
        document.querySelectorAll('.animate-fade-in-up').forEach(el => {
            el.style.opacity = '1';
        });

        // Skill bars
        const skillObserver = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    const bars = entry.target.querySelectorAll('.skill-bar');
                    bars.forEach(bar => {
                        const width = bar.getAttribute('data-width');
                        setTimeout(() => { bar.style.width = width; }, 200);
                    });
                    skillObserver.unobserve(entry.target);
                }
            });
        }, { threshold: 0.3 });

        document.querySelectorAll('#skills .group').forEach(card => {
            skillObserver.observe(card);
        });
        document.querySelectorAll('.skill-bar').forEach(bar => { bar.style.width = '0%'; });

        // Contact form
        document.getElementById('contact-form').addEventListener('submit', function(e) {
            e.preventDefault();
            const toast = document.getElementById('form-toast');
            toast.classList.remove('hidden');
            toast.classList.add('flex');
            this.reset();
            setTimeout(() => {
                toast.classList.add('hidden');
                toast.classList.remove('flex');
            }, 4000);
        });

        // Smooth scroll
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function(e) {
                e.preventDefault();
                const target = document.querySelector(this.getAttribute('href'));
                if (target) {
                    target.scrollIntoView({ behavior: 'smooth', block: 'start' });
                }
            });
        });

        // Active nav on scroll
        const sections = document.querySelectorAll('section[id]');
        const navLinks = document.querySelectorAll('.nav-link');
        window.addEventListener('scroll', () => {
            let current = '';
            sections.forEach(section => {
                const sectionTop = section.offsetTop - 200;
                if (window.scrollY >= sectionTop) {
                    current = section.getAttribute('id');
                }
            });
            navLinks.forEach(link => {
                link.classList.remove('text-white');
                link.classList.add('text-white/70');
                if (link.getAttribute('href') === `#${current}`) {
                    link.classList.add('text-white');
                    link.classList.remove('text-white/70');
                }
            });
        });
    </script>
</body>
</html>