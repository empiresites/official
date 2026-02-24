<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Empire Sites</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">

<style>
*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{
background:#050b1d;
color:white;
overflow-x:hidden;
}

/* ===== NAVBAR ===== */
nav{
position:fixed;
top:0;
left:0;
width:100%;
padding:20px 7%;
display:flex;
justify-content:space-between;
align-items:center;
background:rgba(5,11,29,0.9);
backdrop-filter:blur(10px);
z-index:1000;
}

.logo{
font-weight:800;
font-size:28px;
color:#ffb020;
}

.nav-links{
display:flex;
gap:30px;
}

.nav-links a{
color:#fff;
text-decoration:none;
font-weight:500;
transition:.3s;
}

.nav-links a:hover{
color:#ffb020;
}

.btn{
background:#ff9f1a;
padding:12px 24px;
border-radius:10px;
color:#fff;
font-weight:600;
text-decoration:none;
transition:.3s;
}

.btn:hover{
transform:translateY(-3px);
box-shadow:0 10px 30px rgba(255,160,0,.5);
}

/* ===== HERO ===== */
.hero{
min-height:100vh;
display:flex;
align-items:center;
justify-content:center;
text-align:center;
padding:120px 7% 60px;
background:radial-gradient(circle at top right,#0f204f,#050b1d);
}

.hero h1{
font-size:60px;
font-weight:800;
line-height:1.2;
max-width:900px;
}

.hero h1 span{
color:#ffb020;
}

.hero p{
margin:25px auto;
max-width:700px;
opacity:.8;
font-size:18px;
}

.hero-buttons{
display:flex;
gap:20px;
justify-content:center;
flex-wrap:wrap;
}

/* ===== FEATURE BOXES ===== */
.features{
padding:80px 7%;
display:grid;
grid-template-columns:repeat(auto-fit,minmax(220px,1fr));
gap:20px;
}

.feature{
background:#0b1535;
padding:30px;
border-radius:18px;
text-align:center;
transition:.3s;
border:1px solid rgba(255,255,255,0.08);
}

.feature:hover{
transform:translateY(-8px);
box-shadow:0 15px 30px rgba(0,0,0,.4);
}

/* ===== PORTFOLIO ===== */
.section-title{
text-align:center;
padding:60px 20px 30px;
}

.section-title h2{
font-size:45px;
font-weight:800;
}

.portfolio{
padding:20px 7% 80px;
display:grid;
grid-template-columns:repeat(auto-fit,minmax(300px,1fr));
gap:25px;
}

.card{
background:#0b1535;
border-radius:20px;
overflow:hidden;
transition:.4s;
border:1px solid rgba(255,255,255,.08);
}

.card img{
width:100%;
height:220px;
object-fit:cover;
}

.card h3{
padding:20px;
}

.card:hover{
transform:translateY(-10px);
box-shadow:0 20px 40px rgba(0,0,0,.45);
}

/* ===== PRICING ===== */
.pricing{
padding:70px 7%;
display:grid;
grid-template-columns:repeat(auto-fit,minmax(260px,1fr));
gap:25px;
}

.plan{
background:#0b1535;
padding:35px;
border-radius:18px;
border:1px solid rgba(255,255,255,.1);
transition:.3s;
}

.plan.popular{
background:#ff9f1a;
color:#fff;
transform:scale(1.03);
}

.plan h3{
font-size:28px;
margin-bottom:10px;
}

.price{
font-size:40px;
font-weight:800;
margin-bottom:20px;
}

/* ===== CTA ===== */
.cta{
margin:80px 7%;
background:#ff9f1a;
padding:60px 20px;
border-radius:20px;
text-align:center;
color:#fff;
}

.cta h2{
font-size:42px;
margin-bottom:15px;
}

.cta .btn{
background:#07132f;
}

/* ===== FOOTER ===== */
footer{
background:#040915;
padding:50px 7%;
display:grid;
grid-template-columns:repeat(auto-fit,minmax(240px,1fr));
gap:30px;
}

footer h4{
margin-bottom:15px;
color:#ffb020;
}

footer a{
display:block;
color:#ddd;
text-decoration:none;
margin-bottom:10px;
opacity:.8;
}

/* ===== MOBILE ===== */
@media(max-width:768px){

.hero h1{
font-size:36px;
}

.section-title h2{
font-size:32px;
}

nav{
padding:15px 5%;
}

.nav-links{
display:none;
}

}
</style>
</head>

<body>

<!-- NAV -->
<nav>
<div class="logo">EMPIRE SITES</div>
<div class="nav-links">
<a href="#">Demos</a>
<a href="#">Pricing</a>
<a href="#">Process</a>
<a href="#">Contact</a>
</div>
<a class="btn" href="#">Get Started</a>
</nav>

<!-- HERO -->
<section class="hero">
<div>
<h1>Transform Your <span>Local Business</span> Into A Digital Empire</h1>
<p>We craft stunning, high-conversion websites that help local businesses stand out and grow faster.</p>
<div class="hero-buttons">
<a href="#" class="btn">View Our Work</a>
<a href="#" class="btn" style="background:#0b1535;">Start Your Project</a>
</div>
</div>
</section>

<!-- FEATURES -->
<section class="features">
<div class="feature">⚡ 24-48 Hour Delivery</div>
<div class="feature">📱 Mobile Perfected</div>
<div class="feature">🎨 Premium Design</div>
<div class="feature">🚀 High Conversion</div>
</section>

<!-- PORTFOLIO -->
<div class="section-title">
<h2>Premium Websites</h2>
</div>

<section class="portfolio">
<div class="card">
<img src="https://images.unsplash.com/photo-1571902943202-507ec2618e8f">
<h3>SEM Fitness Academy</h3>
</div>

<div class="card">
<img src="https://images.unsplash.com/photo-1555396273-367ea4eb4db5">
<h3>KEFI Boutique Café</h3>
</div>
</section>

<!-- PRICING -->
<div class="section-title">
<h2>Investment In Your Success</h2>
</div>

<section class="pricing">

<div class="plan">
<h3>Starter</h3>
<div class="price">₹1,999</div>
<p>One page website</p>
<p>Mobile Responsive</p>
<p>Contact Buttons</p>
</div>

<div class="plan popular">
<h3>Pro</h3>
<div class="price">₹2,999</div>
<p>Everything in Starter</p>
<p>Premium Layout</p>
<p>Social Media Integration</p>
</div>

<div class="plan">
<h3>Premium</h3>
<div class="price">₹5,999</div>
<p>Everything in Pro</p>
<p>Advanced Layout</p>
<p>Professional Branding</p>
</div>

</section>

<!-- CTA -->
<section class="cta">
<h2>Ready To Dominate Your Market?</h2>
<p>Join hundreds of successful local businesses.</p>
<br>
<a href="#" class="btn">Message us on WhatsApp</a>
</section>

<!-- FOOTER -->
<footer>
<div>
<h4>Empire Sites</h4>
<p>Transforming local businesses into digital empires.</p>
</div>

<div>
<h4>Quick Links</h4>
<a href="#">Demo Websites</a>
<a href="#">Pricing</a>
<a href="#">Process</a>
</div>

<div>
<h4>Services</h4>
<a href="#">Website Design</a>
<a href="#">Branding</a>
<a href="#">Mobile Optimization</a>
</div>

<div>
<h4>Contact</h4>
<a href="#">+91 83568 73821</a>
<a href="#">WhatsApp Us</a>
<a href="#">@empire.sites</a>
</div>
</footer>

</body>
</html>
