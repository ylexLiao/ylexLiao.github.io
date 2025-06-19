<template>
  <div id="app">
    <!-- Navigation -->
    <nav class="navbar" :class="{ 'scrolled': isScrolled }">
      <div class="nav-container">
        <div class="nav-logo">
          <img src="/favicon.png" alt="YLex" class="logo-img">
          <span class="logo-text">YLex Liao</span>
        </div>
        <ul class="nav-menu" :class="{ 'active': mobileMenuOpen }">
          <li class="nav-item">
            <a href="#home" class="nav-link" @click="setActiveSection('home')">Home</a>
          </li>
          <li class="nav-item">
            <a href="#about" class="nav-link" @click="setActiveSection('about')">About</a>
          </li>
          <li class="nav-item">
            <a href="#research" class="nav-link" @click="setActiveSection('research')">Research</a>
          </li>
          <li class="nav-item">
            <a href="#projects" class="nav-link" @click="setActiveSection('projects')">Projects</a>
          </li>
          <li class="nav-item">
            <a href="#publications" class="nav-link" @click="setActiveSection('publications')">Publications</a>
          </li>
          <li class="nav-item">
            <a href="#contact" class="nav-link" @click="setActiveSection('contact')">Contact</a>
          </li>
        </ul>
        <div class="hamburger" @click="toggleMobileMenu" :class="{ 'active': mobileMenuOpen }">
          <span></span>
          <span></span>
          <span></span>
        </div>
      </div>
    </nav>

    <!-- Main Content -->
    <main class="main-content">
      <!-- Hero Section -->
      <section id="home" class="section hero-section" v-show="activeSection === 'home'">
        <div class="hero-background">
          <div class="grid-pattern"></div>
          <div class="floating-particles"></div>
        </div>
        <div class="hero-content">
          <div class="hero-text">
            <div class="typing-animation">
              <span class="cursor">></span>
              <span class="typed-text">{{ currentTypedText }}</span>
              <span class="cursor-blink">|</span>
            </div>
            <h1 class="hero-title">
              <span class="name">YLex Liao</span>
              <span class="title">Computer Science Researcher</span>
            </h1>
            <p class="hero-subtitle">
              Specializing in AI/ML, Computer Vision, and Secure Systems Development
            </p>
            <p class="hero-description">
              Currently pursuing advanced studies at The Hong Kong Polytechnic University, 
              with research interests in deep learning, computer vision, and intelligent systems.
            </p>
            <div class="hero-stats">
              <div class="stat-item">
                <div class="stat-number">15+</div>
                <div class="stat-label">Projects</div>
              </div>
              <div class="stat-item">
                <div class="stat-number">5+</div>
                <div class="stat-label">Technologies</div>
              </div>
              <div class="stat-item">
                <div class="stat-number">2+</div>
                <div class="stat-label">Years Experience</div>
              </div>
            </div>
            <div class="hero-buttons">
              <button @click="setActiveSection('research')" class="btn btn-primary">
                <span class="btn-icon">[CODE]</span>
                View Research
              </button>
              <button @click="setActiveSection('contact')" class="btn btn-secondary">
                <span class="btn-icon">[MAIL]</span>
                Contact Me
              </button>
            </div>
          </div>
          <div class="hero-visual">
            <div class="terminal-window">
              <div class="terminal-header">
                <div class="terminal-controls">
                  <span class="control red"></span>
                  <span class="control yellow"></span>
                  <span class="control green"></span>
                </div>
                <div class="terminal-title">ylexliao@portfolio:~$</div>
              </div>
              <div class="terminal-body">
                <div class="terminal-line">
                  <span class="prompt">$</span>
                  <span class="command">cat about.txt</span>
                </div>
                <div class="terminal-line output">
                  Name: YLex Liao
                </div>
                <div class="terminal-line output">
                  Status: Computer Science Student
                </div>
                <div class="terminal-line output">
                  University: The Hong Kong Polytechnic University
                </div>
                <div class="terminal-line output">
                  Focus: AI/ML, Computer Vision, Secure Systems
                </div>
                <div class="terminal-line">
                  <span class="prompt">$</span>
                  <span class="command">ls skills/</span>
                </div>
                <div class="terminal-line output">
                  Python  JavaScript  C#  Java  Unity  Vue.js  Flask
                </div>
                <div class="terminal-line">
                  <span class="prompt">$</span>
                  <span class="cursor-blink">_</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- About Section -->
      <section id="about" class="section" v-show="activeSection === 'about'">
        <div class="container">
          <div class="section-header">
            <h2 class="section-title">
              <span class="section-number">01.</span>
              About Me
            </h2>
            <div class="section-line"></div>
          </div>
          <div class="about-content">
            <div class="about-text">
              <div class="about-description">
                <p>
                  I'm a dedicated Computer Science student at The Hong Kong Polytechnic University, 
                  passionate about leveraging artificial intelligence and machine learning to solve 
                  real-world problems. My research interests span computer vision, deep learning, 
                  and secure systems development.
                </p>
                <p>
                  Currently working on my Final Year Project focusing on Food Recognition Systems, 
                  I have gained extensive experience in various domains including game development, 
                  pose recognition, and secure file management systems through internships and academic projects.
                </p>
                <p>
                  My technical expertise encompasses multiple programming languages and frameworks, 
                  with particular strength in Python for AI/ML applications, JavaScript for web development, 
                  and C# for game development using Unity.
                </p>
              </div>
              <div class="education">
                <h3 class="subsection-title">Education</h3>
                <div class="education-item">
                  <div class="education-degree">Bachelor of Science in Computer Science</div>
                  <div class="education-school">The Hong Kong Polytechnic University</div>
                  <div class="education-year">2021 - Present</div>
                </div>
              </div>
              <div class="experience">
                <h3 class="subsection-title">Experience</h3>
                <div class="experience-item">
                  <div class="experience-title">Research Intern</div>
                  <div class="experience-company">Microsoft AI & IoT Insider Labs</div>
                  <div class="experience-project">Ballet Pose Recognition Project</div>
                </div>
              </div>
            </div>
            <div class="about-skills">
              <h3 class="subsection-title">Technical Skills</h3>
              <div class="skills-grid">
                <div class="skill-category">
                  <h4>Languages</h4>
                  <div class="skill-list">
                    <span class="skill-tag">Python</span>
                    <span class="skill-tag">JavaScript</span>
                    <span class="skill-tag">C#</span>
                    <span class="skill-tag">Java</span>
                    <span class="skill-tag">HTML5</span>
                  </div>
                </div>
                <div class="skill-category">
                  <h4>Frameworks & Tools</h4>
                  <div class="skill-list">
                    <span class="skill-tag">Vue.js</span>
                    <span class="skill-tag">Flask</span>
                    <span class="skill-tag">Unity</span>
                    <span class="skill-tag">TensorFlow</span>
                    <span class="skill-tag">PyTorch</span>
                  </div>
                </div>
                <div class="skill-category">
                  <h4>Specializations</h4>
                  <div class="skill-list">
                    <span class="skill-tag">Computer Vision</span>
                    <span class="skill-tag">Deep Learning</span>
                    <span class="skill-tag">Game Development</span>
                    <span class="skill-tag">Web Development</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- Research Section -->
      <section id="research" class="section research-section" v-show="activeSection === 'research'">
        <div class="container">
          <div class="section-header">
            <h2 class="section-title">
              <span class="section-number">02.</span>
              Research Interests
            </h2>
            <div class="section-line"></div>
          </div>
          <div class="research-grid">
            <div class="research-card" v-for="research in researchAreas" :key="research.id">
              <div class="research-icon">{{ research.icon }}</div>
              <h3 class="research-title">{{ research.title }}</h3>
              <p class="research-description">{{ research.description }}</p>
              <div class="research-keywords">
                <span class="keyword" v-for="keyword in research.keywords" :key="keyword">
                  {{ keyword }}
                </span>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- Projects Section -->
      <section id="projects" class="section" v-show="activeSection === 'projects'">
        <div class="container">
          <div class="section-header">
            <h2 class="section-title">
              <span class="section-number">03.</span>
              Featured Projects
            </h2>
            <div class="section-line"></div>
          </div>
          <div class="projects-container">
            <div class="project-card" v-for="project in projects" :key="project.id" :class="project.featured ? 'featured' : ''">
              <div class="project-header">
                <div class="project-type">{{ project.type }}</div>
                <div class="project-links">
                  <a :href="project.github" target="_blank" class="project-link" v-if="project.github">
                    [GITHUB]
                  </a>
                  <a :href="project.demo" target="_blank" class="project-link" v-if="project.demo">
                    [DEMO]
                  </a>
                </div>
              </div>
              <h3 class="project-title">{{ project.title }}</h3>
              <p class="project-description">{{ project.description }}</p>
              <div class="project-tech">
                <span class="tech-tag" v-for="tech in project.technologies" :key="tech">
                  {{ tech }}
                </span>
              </div>
              <div class="project-status">
                <span class="status-indicator" :class="project.status"></span>
                {{ project.statusText }}
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- Publications Section -->
      <section id="publications" class="section publications-section" v-show="activeSection === 'publications'">
        <div class="container">
          <div class="section-header">
            <h2 class="section-title">
              <span class="section-number">04.</span>
              Publications & Achievements
            </h2>
            <div class="section-line"></div>
          </div>
          <div class="publications-content">
            <div class="publication-item">
              <div class="publication-type">Final Year Project</div>
              <h3 class="publication-title">Food Recognition System Using Deep Learning</h3>
              <p class="publication-authors">YLex Liao</p>
              <p class="publication-venue">Hong Kong Baptist University, 2024</p>
              <div class="publication-links">
                <a href="https://ylexliao.github.io/FYP-Food-Recognition-System/" target="_blank" class="publication-link">
                  [PROJECT PAGE]
                </a>
              </div>
            </div>
            
            <div class="achievement-item">
              <div class="achievement-type">Game Jam Achievement</div>
              <h3 class="achievement-title">Global Game Jam 2024: The Bubble's Age</h3>
              <p class="achievement-description">
                Developed a complete game demo in 48 hours during Global Game Jam, 
                demonstrating rapid prototyping and team collaboration skills.
              </p>
              <div class="achievement-links">
                <a href="https://github.com/ylexLiao/GGJ_TBA" target="_blank" class="achievement-link">
                  [VIEW PROJECT]
                </a>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- Contact Section -->
      <section id="contact" class="section contact-section" v-show="activeSection === 'contact'">
        <div class="container">
          <div class="section-header">
            <h2 class="section-title">
              <span class="section-number">05.</span>
              Get In Touch
            </h2>
            <div class="section-line"></div>
          </div>
          <div class="contact-content">
            <div class="contact-info">
              <div class="contact-description">
                <p>
                  I'm always interested in discussing research opportunities, collaboration possibilities, 
                  or innovative project ideas. Whether you're looking for a research partner, 
                  need consultation on AI/ML projects, or want to explore potential collaborations, 
                  I'd love to hear from you.
                </p>
              </div>
              <div class="contact-methods">
                <div class="contact-item">
                  <div class="contact-icon">[MAIL]</div>
                  <div class="contact-details">
                    <h4>Email</h4>
                    <a href="mailto:ylexyj.liao@connect.polyu.hk">ylexyj.liao@connect.polyu.hk</a>
                  </div>
                </div>
                <div class="contact-item">
                  <div class="contact-icon">[CODE]</div>
                  <div class="contact-details">
                    <h4>GitHub</h4>
                    <a href="https://github.com/ylexLiao" target="_blank">github.com/ylexLiao</a>
                  </div>
                </div>
                <div class="contact-item">
                  <div class="contact-icon">[PROF]</div>
                  <div class="contact-details">
                    <h4>LinkedIn</h4>
                    <a href="https://www.linkedin.com/in/ylexliao" target="_blank">linkedin.com/in/ylexliao</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="contact-form">
              <div class="form-header">
                <h3>Send a Message</h3>
                <div class="form-status">Ready to connect</div>
              </div>
              <form @submit.prevent="sendMessage" class="contact-form-element">
                <div class="form-group">
                  <label for="name">Name</label>
                  <input 
                    type="text" 
                    id="name"
                    v-model="form.name" 
                    placeholder="Enter your name"
                    required
                  >
                </div>
                <div class="form-group">
                  <label for="email">Email</label>
                  <input 
                    type="email" 
                    id="email"
                    v-model="form.email" 
                    placeholder="Enter your email"
                    required
                  >
                </div>
                <div class="form-group">
                  <label for="subject">Subject</label>
                  <input 
                    type="text" 
                    id="subject"
                    v-model="form.subject" 
                    placeholder="What's this about?"
                    required
                  >
                </div>
                <div class="form-group">
                  <label for="message">Message</label>
                  <textarea 
                    id="message"
                    v-model="form.message" 
                    placeholder="Your message here..."
                    rows="6"
                    required
                  ></textarea>
                </div>
                <button type="submit" class="btn btn-primary btn-full">
                  <span class="btn-icon">[SEND]</span>
                  Send Message
                </button>
              </form>
            </div>
          </div>
        </div>
      </section>
    </main>

    <!-- Footer -->
    <footer class="footer">
      <div class="container">
        <div class="footer-content">
          <div class="footer-info">
            <div class="footer-logo">
              <img src="/favicon.png" alt="YLex" class="footer-logo-img">
              <span>YLex Liao</span>
            </div>
            <p class="footer-description">
              Computer Science Researcher specializing in AI/ML and Computer Vision
            </p>
          </div>
          <div class="footer-links">
            <a href="https://github.com/ylexLiao" target="_blank" class="footer-link">GitHub</a>
            <a href="https://www.linkedin.com/in/ylexliao" target="_blank" class="footer-link">LinkedIn</a>
            <a href="mailto:ylexyj.liao@connect.polyu.hk" class="footer-link">Email</a>
          </div>
        </div>
        <div class="footer-bottom">
          <p>&copy; 2024 YLex Liao. Built with Vue.js</p>
        </div>
      </div>
    </footer>
  </div>
</template>

<script>
export default {
  name: 'App',
  data() {
    return {
      activeSection: 'home',
      isScrolled: false,
      mobileMenuOpen: false,
      currentTypedText: '',
      typingTexts: [
        'console.log("Hello, World");',
        'import research from "./ai-ml";',
        'def solve_problems():',
        'class ComputerVision():',
        '> Welcome to my portfolio'
      ],
      typingIndex: 0,
      charIndex: 0,
      isDeleting: false,
      form: {
        name: '',
        email: '',
        subject: '',
        message: ''
      },
      researchAreas: [
        {
          id: 1,
          title: 'Computer Vision',
          icon: '[CV]',
          description: 'Developing algorithms for image recognition, object detection, and pose estimation with applications in real-world scenarios.',
          keywords: ['Deep Learning', 'Image Processing', 'Object Detection', 'Pose Recognition']
        },
        {
          id: 2,
          title: 'Machine Learning',
          icon: '[ML]',
          description: 'Exploring advanced ML techniques for pattern recognition, recommendation systems, and predictive modeling.',
          keywords: ['Neural Networks', 'Classification', 'Recommendation Systems', 'Feature Engineering']
        },
        {
          id: 3,
          title: 'Secure Systems',
          icon: '[SEC]',
          description: 'Designing and implementing secure file management systems with focus on encryption and data protection.',
          keywords: ['Cryptography', 'Security Protocols', 'File Systems', 'Access Control']
        },
        {
          id: 4,
          title: 'Game Development',
          icon: '[GAME]',
          description: 'Creating immersive gaming experiences using Unity and exploring AI applications in game mechanics.',
          keywords: ['Unity3D', 'VR/AR', 'Game AI', 'Interactive Systems']
        }
      ],
      projects: [
        {
          id: 1,
          title: 'Food Recognition System',
          type: 'Final Year Project',
          description: 'Deep learning-based system for automatic food identification and nutritional analysis using computer vision techniques.',
          technologies: ['Python', 'TensorFlow', 'OpenCV', 'Flask', 'Vue.js'],
          github: 'https://github.com/ylexLiao/FYP-Food-Recognition-System',
          demo: 'https://ylexliao.github.io/FYP-Food-Recognition-System/',
          status: 'active',
          statusText: 'Active Development',
          featured: true
        },
        {
          id: 2,
          title: 'Secure File Management System',
          type: 'Web Application',
          description: 'A comprehensive web application providing secure file encryption, decryption, and key management functionalities.',
          technologies: ['Python', 'Flask', 'Cryptography', 'SQLite', 'JavaScript'],
          github: 'https://github.com/ylexLiao/secure-file-management-system',
          demo: null,
          status: 'active',
          statusText: 'In Progress',
          featured: true
        },
        {
          id: 3,
          title: 'Ballet Pose Recognition',
          type: 'Research Internship',
          description: 'AI-powered system for ballet pose analysis and correction, developed during internship at Microsoft AI & IoT Labs.',
          technologies: ['Python', 'MediaPipe', 'TensorFlow', 'OpenCV'],
          github: 'https://github.com/ylexLiao/Ballet_pose_recognition',
          demo: null,
          status: 'completed',
          statusText: 'Completed',
          featured: true
        },
        {
          id: 4,
          title: 'Global Game Jam: The Bubble\'s Age',
          type: 'Game Development',
          description: 'Complete game developed in 48 hours during Global Game Jam, featuring unique bubble-based mechanics.',
          technologies: ['Unity3D', 'C#', 'Game Design'],
          github: 'https://github.com/ylexLiao/GGJ_TBA',
          demo: null,
          status: 'completed',
          statusText: 'Game Jam 2024',
          featured: false
        }
      ]
    }
  },
  mounted() {
    window.addEventListener('scroll', this.handleScroll);
    this.startTypingAnimation();
  },
  beforeUnmount() {
    window.removeEventListener('scroll', this.handleScroll);
  },
  methods: {
    setActiveSection(section) {
      this.activeSection = section;
      this.mobileMenuOpen = false;
    },
    toggleMobileMenu() {
      this.mobileMenuOpen = !this.mobileMenuOpen;
    },
    handleScroll() {
      this.isScrolled = window.scrollY > 50;
    },
    startTypingAnimation() {
      const typeSpeed = 100;
      const deleteSpeed = 50;
      const delayBetweenTexts = 2000;

      const type = () => {
        const currentText = this.typingTexts[this.typingIndex];
        
        if (this.isDeleting) {
          this.currentTypedText = currentText.substring(0, this.charIndex - 1);
          this.charIndex--;
          
          if (this.charIndex === 0) {
            this.isDeleting = false;
            this.typingIndex = (this.typingIndex + 1) % this.typingTexts.length;
            setTimeout(type, typeSpeed);
          } else {
            setTimeout(type, deleteSpeed);
          }
        } else {
          this.currentTypedText = currentText.substring(0, this.charIndex + 1);
          this.charIndex++;
          
          if (this.charIndex === currentText.length) {
            setTimeout(() => {
              this.isDeleting = true;
              type();
            }, delayBetweenTexts);
          } else {
            setTimeout(type, typeSpeed);
          }
        }
      };

      type();
    },
    sendMessage() {
      console.log('Message sent:', this.form);
      alert('Message sent successfully! I will get back to you soon.');
      this.form = { name: '', email: '', subject: '', message: '' };
    }
  }
}
</script>

<style scoped>
/* 由于样式非常长，我会分几部分创建 */
