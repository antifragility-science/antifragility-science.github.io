---
permalink: /
title: "Applied Antifragility Group"
excerpt: "Group mission and paths"
author_profile: false
redirect_from: 
  - /about/
  - /about.html
---

<style>
  .page__title {
    display: none !important;
  }
  
  /* Content zentrieren wenn keine Sidebar da ist */
  .archive {
    width: 100% !important;
    float: none !important;
    margin-left: auto !important;
    margin-right: auto !important;
  }
  
  .page {
    width: 100% !important;
  }
  
  #main {
    max-width: 1200px !important;
    margin-left: auto !important;
    margin-right: auto !important;
  }

  /* Grid für die 4 Paths */
  .paths-grid {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    row-gap: 40px;
    column-gap: 4%;
    margin-top: 40px;
    margin-bottom: 40px;
  }

  .path-item {
    flex: 0 0 48%;
  }

  .path-content {
    display: flex;
    align-items: flex-start;
  }

  .path-image img {
    max-width: 180px;
    height: auto;
    display: block;
  }

  .path-text {
    margin-left: 20px;
  }

  .path-title {
    font-weight: 700;
    margin-bottom: 8px;
    color: #8a7a45;
  }

  /* Links in den Path-Titeln wie normaler Text */
  .path-title a {
    color: inherit;
    text-decoration: none;
  }
  .path-title a:hover {
    text-decoration: underline;
  }

  @media (max-width: 800px) {
    .path-item {
      flex: 0 0 100%;
    }
  }
</style>

<h1 style="color: #ff0000; text-align: left; font-size: 35px; margin-top: 20px; margin-bottom: 30px;">Applied Antifragility</h1>

As coined in the book of [Nassim Taleb](https://www.fooledbyrandomness.com/), antifragility is a property of a system to gain from uncertainty, randomness, and volatility, opposite to what fragility would incur. An antifragile system's response to external perturbations is beyond robust, such that small stressors can strengthen the future response of the system by adding a strong anticipation component.

<h1 style="color: #ff0000; text-align: left; font-size: 35px; margin-top: 20px; margin-bottom: 30px;">Group Mission and Paths</h1>

Our research group's mission is to build a foundational knowledge base by applying antifragile system design, analysis, and development across domains. We are interested in formalizing principles and an apparatus that turns the basic concept of antifragility into a tool for designing and building closed-loop systems that behave beyond robust in the face of uncertainty.

We are a very diverse group of researchers from different fields. Such an interdisciplinary constellation allows us to explore applied antifragility through multiple paths.

<div class="paths-grid">

  <div class="path-item">
    <div class="path-content">
      <div class="path-image">
        <img src="/images/home/Home_2.jpg" alt="Path 1 illustration">
      </div>
      <div class="path-text">
        <div class="path-title"><a href="/research/">Path 1</a></div>
        <p>Mathematical identification of second-order effects in the dynamical system response characterizing antifragile responses.</p>
      </div>
    </div>
  </div>

  <div class="path-item">
    <div class="path-content">
      <div class="path-image">
        <img src="/images/home/Home_1.jpg" alt="Path 2 illustration">
      </div>
      <div class="path-text">
        <div class="path-title"><a href="/research/">Path 2</a></div>
        <p>Mapping the dynamics of the system to physical principles of criticality and evolution to describe reaching an antifragile state.</p>
      </div>
    </div>
  </div>

  <div class="path-item">
    <div class="path-content">
      <div class="path-image">
        <img src="/images/home/Home_4.jpg" alt="Path 3 illustration">
      </div>
      <div class="path-text">
        <div class="path-title"><a href="/research/">Path 3</a></div>
        <p>Nonlinear synthesis of driving signals to push dynamical systems to antifragile regions in their response spectrum.</p>
      </div>
    </div>
  </div>

  <div class="path-item">
    <div class="path-content">
      <div class="path-image">
        <img src="/images/home/Home_3.jpg" alt="Path 4 illustration">
      </div>
      <div class="path-text">
        <div class="path-title"><a href="/research/">Path 4</a></div>
        <p>Exploring and learning the optimal steps to drive the system in its evolution toward antifragile behavior.</p>
      </div>
    </div>
  </div>

</div>
