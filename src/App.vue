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
                <div class="stat-number">4+</div>
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
        },
        {
          id: 5,
          title: 'AI vs Real Image Classifier',
          type: 'Deep Learning',
          description: 'Deep learning prototype to distinguish between real and AI-generated images using advanced CNN architectures.',
          technologies: ['Python', 'PyTorch', 'Computer Vision', 'CNNs'],
          github: 'https://github.com/ylexLiao/Distinguishing-Real-from-AI-Generated-Images-Prototype',
          demo: null,
          status: 'completed',
          statusText: 'Research Complete',
          featured: false
        },
        {
          id: 6,
          title: 'Machine Translation with Transformer',
          type: 'NLP Research',
          description: 'Implementation of Transformer architecture for English-French translation with attention mechanisms.',
          technologies: ['Python', 'PyTorch', 'Transformer', 'NLP'],
          github: 'https://github.com/ylexLiao/Machine-Translation-Based-on-Transformer',
          demo: null,
          status: 'completed',
          statusText: 'Academic Project',
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
/* Global Styles */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

#app {
  font-family: 'JetBrains Mono', 'Consolas', 'Monaco', monospace;
  line-height: 1.6;
  color: #e4e4e7;
  background: #0a0a0a;
  overflow-x: hidden;
}

/* CSS Variables */
:root {
  --primary-color: #3b82f6;
  --secondary-color: #1e40af;
  --accent-color: #60a5fa;
  --bg-primary: #0a0a0a;
  --bg-secondary: #111111;
  --bg-card: #1a1a1a;
  --text-primary: #e4e4e7;
  --text-secondary: #a1a1aa;
  --text-muted: #71717a;
  --border-color: #27272a;
  --border-accent: #3f3f46;
  --shadow-color: rgba(0, 0, 0, 0.3);
  --transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
  --glow: 0 0 20px rgba(59, 130, 246, 0.3);
}

/* Navbar */
.navbar {
  position: fixed;
  top: 0;
  width: 100%;
  z-index: 1000;
  background: rgba(10, 10, 10, 0.95);
  backdrop-filter: blur(10px);
  border-bottom: 1px solid var(--border-color);
  transition: var(--transition);
}

.navbar.scrolled {
  background: rgba(10, 10, 10, 0.98);
  border-bottom-color: var(--border-accent);
}

.nav-container {
  max-width: 1200px;
  margin: 0 auto;
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 1rem 2rem;
}

.nav-logo {
  display: flex;
  align-items: center;
  gap: 0.75rem;
  font-weight: 600;
  font-size: 1.125rem;
  color: var(--text-primary);
}

.logo-img {
  width: 32px;
  height: 32px;
  border-radius: 4px;
  border: 1px solid var(--border-accent);
}

.nav-menu {
  display: flex;
  list-style: none;
  gap: 2rem;
}

.nav-link {
  color: var(--text-secondary);
  text-decoration: none;
  font-weight: 400;
  font-size: 0.875rem;
  transition: var(--transition);
  cursor: pointer;
  position: relative;
}

.nav-link:hover {
  color: var(--primary-color);
}

.nav-link::before {
  content: '[';
  opacity: 0;
  transform: translateX(10px);
  transition: var(--transition);
}

.nav-link::after {
  content: ']';
  opacity: 0;
  transform: translateX(-10px);
  transition: var(--transition);
}

.nav-link:hover::before,
.nav-link:hover::after {
  opacity: 1;
  transform: translateX(0);
}

.hamburger {
  display: none;
  flex-direction: column;
  cursor: pointer;
  gap: 4px;
}

.hamburger span {
  width: 20px;
  height: 2px;
  background: var(--text-secondary);
  transition: var(--transition);
}

/* Hero Section */
.hero-section {
  min-height: 100vh;
  display: flex;
  align-items: center;
  position: relative;
  background: linear-gradient(135deg, #0a0a0a 0%, #1a1a2e 50%, #16213e 100%);
}

.hero-background {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  overflow: hidden;
}

.grid-pattern {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-image: 
    linear-gradient(rgba(59, 130, 246, 0.1) 1px, transparent 1px),
    linear-gradient(90deg, rgba(59, 130, 246, 0.1) 1px, transparent 1px);
  background-size: 50px 50px;
  animation: grid-move 20s linear infinite;
}

@keyframes grid-move {
  0% { transform: translate(0, 0); }
  100% { transform: translate(50px, 50px); }
}

.floating-particles::before,
.floating-particles::after {
  content: '';
  position: absolute;
  width: 4px;
  height: 4px;
  background: var(--primary-color);
  border-radius: 50%;
  animation: float 6s ease-in-out infinite;
}

.floating-particles::before {
  top: 20%;
  left: 20%;
  animation-delay: -2s;
}

.floating-particles::after {
  top: 60%;
  right: 20%;
  animation-delay: -4s;
}

@keyframes float {
  0%, 100% { transform: translateY(0px) rotate(0deg); opacity: 1; }
  50% { transform: translateY(-20px) rotate(180deg); opacity: 0.5; }
}

.hero-content {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 2rem;
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 4rem;
  align-items: center;
  position: relative;
  z-index: 1;
}

.typing-animation {
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.875rem;
  color: var(--accent-color);
  margin-bottom: 1rem;
  min-height: 1.5rem;
}

.cursor {
  color: var(--primary-color);
}

.cursor-blink {
  animation: blink 1s infinite;
}

@keyframes blink {
  0%, 50% { opacity: 1; }
  51%, 100% { opacity: 0; }
}

.hero-title {
  font-size: 3.5rem;
  font-weight: 700;
  line-height: 1.1;
  margin-bottom: 1.5rem;
}

.name {
  display: block;
  color: var(--text-primary);
}

.title {
  display: block;
  font-size: 1.5rem;
  color: var(--primary-color);
  font-weight: 400;
}

.hero-subtitle {
  font-size: 1.125rem;
  color: var(--accent-color);
  margin-bottom: 1rem;
  font-weight: 500;
}

.hero-description {
  font-size: 1rem;
  color: var(--text-secondary);
  margin-bottom: 2rem;
  line-height: 1.7;
}

.hero-stats {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 1.5rem;
  margin-bottom: 2rem;
}

.stat-item {
  text-align: center;
  padding: 1rem;
  background: rgba(26, 26, 26, 0.5);
  border: 1px solid var(--border-color);
  border-radius: 8px;
}

.stat-number {
  font-size: 1.5rem;
  font-weight: 700;
  color: var(--primary-color);
}

.stat-label {
  font-size: 0.75rem;
  color: var(--text-muted);
  text-transform: uppercase;
  letter-spacing: 0.05em;
}

.hero-buttons {
  display: flex;
  gap: 1rem;
}

.btn {
  padding: 0.75rem 1.5rem;
  border: 1px solid var(--border-accent);
  border-radius: 4px;
  font-family: inherit;
  font-size: 0.875rem;
  font-weight: 500;
  cursor: pointer;
  transition: var(--transition);
  text-decoration: none;
  display: inline-flex;
  align-items: center;
  gap: 0.5rem;
  background: transparent;
}

.btn-primary {
  background: var(--primary-color);
  color: white;
  border-color: var(--primary-color);
}

.btn-primary:hover {
  background: var(--secondary-color);
  border-color: var(--secondary-color);
  box-shadow: var(--glow);
}

.btn-secondary {
  color: var(--text-primary);
  border-color: var(--border-accent);
}

.btn-secondary:hover {
  background: rgba(59, 130, 246, 0.1);
  border-color: var(--primary-color);
  color: var(--primary-color);
}

.btn-icon {
  font-size: 0.75rem;
  opacity: 0.8;
}

.btn-full {
  width: 100%;
  justify-content: center;
}

/* Terminal Window */
.terminal-window {
  background: var(--bg-card);
  border: 1px solid var(--border-accent);
  border-radius: 8px;
  overflow: hidden;
  box-shadow: 0 20px 40px var(--shadow-color);
}

.terminal-header {
  background: var(--bg-secondary);
  padding: 0.75rem 1rem;
  display: flex;
  justify-content: space-between;
  align-items: center;
  border-bottom: 1px solid var(--border-color);
}

.terminal-controls {
  display: flex;
  gap: 0.5rem;
}

.control {
  width: 12px;
  height: 12px;
  border-radius: 50%;
}

.control.red { background: #ff5f56; }
.control.yellow { background: #ffbd2e; }
.control.green { background: #27ca3f; }

.terminal-title {
  font-size: 0.75rem;
  color: var(--text-muted);
}

.terminal-body {
  padding: 1.5rem;
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.875rem;
  line-height: 1.5;
}

.terminal-line {
  margin-bottom: 0.5rem;
}

.prompt {
  color: var(--primary-color);
}

.command {
  color: var(--accent-color);
  margin-left: 0.5rem;
}

.output {
  color: var(--text-secondary);
  margin-left: 1rem;
}

/* Section Styles */
.section {
  min-height: 100vh;
  padding: 6rem 0;
  position: relative;
}

.section:nth-child(even) {
  background: var(--bg-secondary);
}

.container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 2rem;
}

.section-header {
  margin-bottom: 4rem;
}

.section-title {
  font-size: 2.5rem;
  font-weight: 700;
  color: var(--text-primary);
  display: flex;
  align-items: center;
  gap: 1rem;
  margin-bottom: 1rem;
}

.section-number {
  font-size: 1.25rem;
  color: var(--primary-color);
  font-weight: 400;
}

.section-line {
  height: 1px;
  background: linear-gradient(90deg, var(--primary-color), transparent);
  flex: 1;
}

/* About Section */
.about-content {
  display: grid;
  grid-template-columns: 2fr 1fr;
  gap: 4rem;
}

.about-description p {
  margin-bottom: 1.5rem;
  color: var(--text-secondary);
  line-height: 1.7;
}

.subsection-title {
  font-size: 1.25rem;
  color: var(--text-primary);
  margin-bottom: 1rem;
  margin-top: 2rem;
}

.education-item,
.experience-item {
  padding: 1.5rem;
  background: var(--bg-card);
  border: 1px solid var(--border-color);
  border-radius: 8px;
  margin-bottom: 1rem;
}

.education-degree,
.experience-title {
  font-weight: 600;
  color: var(--text-primary);
  margin-bottom: 0.5rem;
}

.education-school,
.experience-company {
  color: var(--primary-color);
  margin-bottom: 0.25rem;
}

.education-year,
.experience-project {
  color: var(--text-muted);
  font-size: 0.875rem;
}

.skills-grid {
  display: grid;
  gap: 2rem;
}

.skill-category h4 {
  color: var(--text-primary);
  margin-bottom: 1rem;
  font-size: 1rem;
}

.skill-list {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
}

.skill-tag {
  background: rgba(59, 130, 246, 0.1);
  color: var(--primary-color);
  padding: 0.25rem 0.75rem;
  border-radius: 4px;
  font-size: 0.75rem;
  border: 1px solid rgba(59, 130, 246, 0.2);
}

/* Research Section */
.research-section {
  background: var(--bg-secondary);
}

.research-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
}

.research-card {
  background: var(--bg-card);
  border: 1px solid var(--border-color);
  border-radius: 8px;
  padding: 2rem;
  transition: var(--transition);
}

.research-card:hover {
  border-color: var(--primary-color);
  transform: translateY(-5px);
  box-shadow: 0 10px 30px var(--shadow-color);
}

.research-icon {
  font-family: 'JetBrains Mono', monospace;
  font-size: 1.5rem;
  color: var(--primary-color);
  margin-bottom: 1rem;
}

.research-title {
  font-size: 1.25rem;
  color: var(--text-primary);
  margin-bottom: 1rem;
}

.research-description {
  color: var(--text-secondary);
  margin-bottom: 1.5rem;
  line-height: 1.6;
}

.research-keywords {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
}

.keyword {
  background: rgba(30, 64, 175, 0.1);
  color: var(--secondary-color);
  padding: 0.25rem 0.5rem;
  border-radius: 4px;
  font-size: 0.75rem;
  border: 1px solid rgba(30, 64, 175, 0.2);
}

/* Projects Section */
.projects-container {
  display: grid;
  gap: 2rem;
}

.project-card {
  background: var(--bg-card);
  border: 1px solid var(--border-color);
  border-radius: 8px;
  padding: 2rem;
  transition: var(--transition);
}

.project-card.featured {
  border-color: var(--primary-color);
  box-shadow: 0 0 0 1px rgba(59, 130, 246, 0.1);
}

.project-card:hover {
  border-color: var(--accent-color);
  transform: translateY(-3px);
}

.project-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 1rem;
}

.project-type {
  background: rgba(59, 130, 246, 0.1);
  color: var(--primary-color);
  padding: 0.25rem 0.75rem;
  border-radius: 4px;
  font-size: 0.75rem;
  text-transform: uppercase;
  letter-spacing: 0.05em;
}

.project-links {
  display: flex;
  gap: 1rem;
}

.project-link {
  color: var(--text-muted);
  text-decoration: none;
  font-size: 0.75rem;
  font-family: 'JetBrains Mono', monospace;
  transition: var(--transition);
}

.project-link:hover {
  color: var(--primary-color);
}

.project-title {
  font-size: 1.5rem;
  color: var(--text-primary);
  margin-bottom: 1rem;
  font-weight: 600;
}

.project-description {
  color: var(--text-secondary);
  margin-bottom: 1.5rem;
  line-height: 1.6;
}

.project-tech {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
  margin-bottom: 1rem;
}

.tech-tag {
  background: rgba(96, 165, 250, 0.1);
  color: var(--accent-color);
  padding: 0.25rem 0.5rem;
  border-radius: 4px;
  font-size: 0.75rem;
  border: 1px solid rgba(96, 165, 250, 0.2);
}

.project-status {
  display: flex;
  align-items: center;
  gap: 0.5rem;
  font-size: 0.875rem;
  color: var(--text-muted);
}

.status-indicator {
  width: 8px;
  height: 8px;
  border-radius: 50%;
}

.status-indicator.active {
  background: #22c55e;
  box-shadow: 0 0 0 2px rgba(34, 197, 94, 0.2);
}

.status-indicator.completed {
  background: var(--primary-color);
  box-shadow: 0 0 0 2px rgba(59, 130, 246, 0.2);
}

/* Publications Section */
.publications-section {
  background: var(--bg-secondary);
}

.publications-content {
  display: grid;
  gap: 2rem;
}

.publication-item {
  background: var(--bg-card);
  border: 1px solid var(--border-color);
  border-radius: 8px;
  padding: 2rem;
  transition: var(--transition);
}

.publication-item:hover {
  border-color: var(--accent-color);
  transform: translateY(-2px);
}

.publication-type,
.achievement-type {
  background: rgba(59, 130, 246, 0.1);
  color: var(--primary-color);
  padding: 0.25rem 0.75rem;
  border-radius: 4px;
  font-size: 0.75rem;
  text-transform: uppercase;
  letter-spacing: 0.05em;
  display: inline-block;
  margin-bottom: 1rem;
}

.publication-title,
.achievement-title {
  font-size: 1.25rem;
  color: var(--text-primary);
  margin-bottom: 0.5rem;
  font-weight: 600;
}

.publication-authors,
.publication-venue,
.achievement-description {
  color: var(--text-secondary);
  margin-bottom: 0.5rem;
  line-height: 1.6;
}

.publication-venue {
  font-style: italic;
  margin-bottom: 1rem;
}

.publication-links,
.achievement-links {
  margin-top: 1rem;
}

.publication-link,
.achievement-link {
  color: var(--text-muted);
  text-decoration: none;
  font-size: 0.75rem;
  font-family: 'JetBrains Mono', monospace;
  transition: var(--transition);
}

.publication-link:hover,
.achievement-link:hover {
  color: var(--primary-color);
}

/* Contact Section */
.contact-section {
  background: var(--bg-primary);
}

.contact-content {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 4rem;
}

.contact-description {
  margin-bottom: 2rem;
}

.contact-description p {
  color: var(--text-secondary);
  line-height: 1.7;
}

.contact-methods {
  display: grid;
  gap: 1.5rem;
}

.contact-item {
  display: flex;
  align-items: center;
  gap: 1rem;
  padding: 1.5rem;
  background: var(--bg-card);
  border: 1px solid var(--border-color);
  border-radius: 8px;
  transition: var(--transition);
}

.contact-item:hover {
  border-color: var(--primary-color);
  transform: translateX(5px);
}

.contact-icon {
  font-family: 'JetBrains Mono', monospace;
  font-size: 1rem;
  color: var(--primary-color);
  min-width: 60px;
  text-align: center;
}

.contact-details h4 {
  font-weight: 600;
  margin-bottom: 0.25rem;
  color: var(--text-primary);
}

.contact-details a {
  color: var(--text-secondary);
  text-decoration: none;
  transition: var(--transition);
}

.contact-details a:hover {
  color: var(--primary-color);
}

.contact-form {
  background: var(--bg-card);
  border: 1px solid var(--border-color);
  border-radius: 8px;
  padding: 2rem;
}

.form-header {
  margin-bottom: 2rem;
  text-align: center;
}

.form-header h3 {
  color: var(--text-primary);
  margin-bottom: 0.5rem;
}

.form-status {
  color: var(--accent-color);
  font-size: 0.875rem;
  font-family: 'JetBrains Mono', monospace;
}

.contact-form-element {
  display: grid;
  gap: 1.5rem;
}

.form-group {
  display: grid;
  gap: 0.5rem;
}

.form-group label {
  color: var(--text-primary);
  font-size: 0.875rem;
  font-weight: 500;
}

.form-group input,
.form-group textarea {
  width: 100%;
  padding: 1rem;
  background: var(--bg-secondary);
  border: 1px solid var(--border-color);
  border-radius: 4px;
  color: var(--text-primary);
  font-family: inherit;
  font-size: 0.875rem;
  transition: var(--transition);
  resize: vertical;
}

.form-group input:focus,
.form-group textarea:focus {
  outline: none;
  border-color: var(--primary-color);
  box-shadow: 0 0 0 2px rgba(59, 130, 246, 0.1);
}

.form-group input::placeholder,
.form-group textarea::placeholder {
  color: var(--text-muted);
}

/* Footer */
.footer {
  background: var(--bg-secondary);
  border-top: 1px solid var(--border-color);
  padding: 3rem 0 1rem 0;
}

.footer-content {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 2rem;
}

.footer-logo {
  display: flex;
  align-items: center;
  gap: 0.75rem;
  font-weight: 600;
  font-size: 1.125rem;
  color: var(--text-primary);
}

.footer-logo-img {
  width: 32px;
  height: 32px;
  border-radius: 4px;
  border: 1px solid var(--border-accent);
}

.footer-description {
  color: var(--text-muted);
  margin-top: 0.5rem;
  max-width: 400px;
}

.footer-links {
  display: flex;
  gap: 2rem;
}

.footer-link {
  color: var(--text-secondary);
  text-decoration: none;
  font-size: 0.875rem;
  transition: var(--transition);
}

.footer-link:hover {
  color: var(--primary-color);
}

.footer-bottom {
  text-align: center;
  padding-top: 2rem;
  border-top: 1px solid var(--border-color);
}

.footer-bottom p {
  color: var(--text-muted);
  font-size: 0.875rem;
}

/* Responsive Design */
@media (max-width: 1024px) {
  .hero-content {
    grid-template-columns: 1fr;
    text-align: center;
  }
  
  .about-content {
    grid-template-columns: 1fr;
  }
  
  .contact-content {
    grid-template-columns: 1fr;
  }
  
  .hero-title {
    font-size: 3rem;
  }
  
  .section-title {
    font-size: 2rem;
  }
}

@media (max-width: 768px) {
  .hamburger {
    display: flex;
  }
  
  .nav-menu {
    position: fixed;
    top: 100%;
    left: 0;
    width: 100%;
    background: var(--bg-secondary);
    flex-direction: column;
    padding: 2rem;
    border-top: 1px solid var(--border-color);
    transform: translateY(-100%);
    opacity: 0;
    visibility: hidden;
    transition: var(--transition);
  }
  
  .nav-menu.active {
    transform: translateY(0);
    opacity: 1;
    visibility: visible;
  }
  
  .hamburger.active span:nth-child(1) {
    transform: rotate(45deg) translate(5px, 5px);
  }
  
  .hamburger.active span:nth-child(2) {
    opacity: 0;
  }
  
  .hamburger.active span:nth-child(3) {
    transform: rotate(-45deg) translate(7px, -6px);
  }
  
  .hero-title {
    font-size: 2.5rem;
  }
  
  .hero-stats {
    grid-template-columns: 1fr;
    gap: 1rem;
  }
  
  .hero-buttons {
    flex-direction: column;
  }
  
  .section-title {
    font-size: 1.75rem;
    flex-direction: column;
    align-items: flex-start;
    gap: 0.5rem;
  }
  
  .section-line {
    width: 100px;
    height: 2px;
  }
  
  .research-grid {
    grid-template-columns: 1fr;
  }
  
  .footer-content {
    flex-direction: column;
    gap: 2rem;
    text-align: center;
  }
  
  .footer-links {
    justify-content: center;
  }
}

@media (max-width: 480px) {
  .container {
    padding: 0 1rem;
  }
  
  .nav-container {
    padding: 1rem;
  }
  
  .hero-content {
    padding: 0 1rem;
    gap: 2rem;
  }
  
  .hero-title {
    font-size: 2rem;
  }
  
  .terminal-body {
    padding: 1rem;
    font-size: 0.75rem;
  }
  
  .section {
    padding: 4rem 0;
  }
  
  .section-header {
    margin-bottom: 3rem;
  }
  
  .about-content,
  .contact-content {
    gap: 2rem;
  }
  
  .project-card,
  .research-card,
  .contact-form {
    padding: 1.5rem;
  }
}

/* Loading and Animation States */
.fade-enter-active,
.fade-leave-active {
  transition: opacity 0.3s ease;
}

.fade-enter-from,
.fade-leave-to {
  opacity: 0;
}

/* Scrollbar Styling */
::-webkit-scrollbar {
  width: 8px;
}

::-webkit-scrollbar-track {
  background: var(--bg-secondary);
}

::-webkit-scrollbar-thumb {
  background: var(--border-accent);
  border-radius: 4px;
}

::-webkit-scrollbar-thumb:hover {
  background: var(--primary-color);
}

/* Selection Styling */
::selection {
  background: rgba(59, 130, 246, 0.3);
  color: var(--text-primary);
}

/* Focus Styles */
.nav-link:focus,
.btn:focus,
.form-group input:focus,
.form-group textarea:focus {
  outline: 2px solid var(--primary-color);
  outline-offset: 2px;
}

/* High Contrast Mode Support */
@media (prefers-contrast: high) {
  :root {
    --primary-color: #60a5fa;
    --text-primary: #ffffff;
    --text-secondary: #d1d5db;
    --border-color: #4b5563;
  }
}

/* Reduced Motion Support */
@media (prefers-reduced-motion: reduce) {
  *,
  *::before,
  *::after {
    animation-duration: 0.01ms !important;
    animation-iteration-count: 1 !important;
    transition-duration: 0.01ms !important;
  }
  
  .grid-pattern {
    animation: none;
  }
  
  .floating-particles::before,
  .floating-particles::after {
    animation: none;
  }
}

/* Print Styles */
@media print {
  .navbar,
  .hero-visual,
  .contact-form,
  .footer {
    display: none;
  }
  
  .section {
    page-break-inside: avoid;
    min-height: auto;
    padding: 2rem 0;
  }
  
  .hero-section {
    background: white;
    color: black;
  }
  
  .project-card,
  .research-card {
    border: 1px solid #ccc;
    break-inside: avoid;
  }
}
</style>