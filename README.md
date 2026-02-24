# Marketing Analytics Project — End-to-End Customer Insights

## Project Overview

This project is an end-to-end marketing analytics solution designed to analyze customer behavior, engagement performance, sentiment from reviews, and conversion funnel dynamics. The goal is to uncover actionable insights that help improve marketing effectiveness, customer experience, and product performance.

The project integrates:

* SQL data modeling (fact + dimension tables)
* Python sentiment analysis using NLP
* Data transformation and cleaning
* Funnel and engagement analysis
* Interactive dashboarding in Power BI

---

## Objectives

* Understand customer engagement across marketing channels
* Analyze conversion across the customer journey funnel
* Extract sentiment insights from customer reviews
* Identify product and content performance drivers
* Provide data-driven recommendations for marketing strategy

---

## Data Architecture

### Fact Tables

* **Engagement Data** — Content interactions (likes, views, clicks)
* **Customer Journey** — Funnel stages and behavior
* **Customer Reviews** — Ratings and review text
* **Reviews with Sentiment** — NLP-enhanced review insights

### Dimension Tables

* Customers (demographics)
* Products (category, pricing)
* Geography (location)

---

## Sentiment Analysis Pipeline

Customer reviews are processed using Python and NLTK VADER sentiment analysis to:

* Calculate sentiment scores
* Categorize reviews (Positive, Negative, Mixed, Neutral)
* Bucket sentiment intensity

The pipeline extracts review data from SQL, applies sentiment scoring, and stores results in a new fact table for analysis. 

---

## Data Preparation & Cleaning

Key transformations performed:

* Standardized content types (case normalization)
* Split combined views-clicks column into separate metrics
* Cleaned funnel stage labels
* Joined fact and dimension tables for analysis
* Handled categorical inconsistencies

---

## Key Insights

### 1. Marketing Engagement Performance

* Video content has the highest CTR (~19.8%)
* Social media closely follows (~19.7%)
* Blogs and newsletters slightly lower but still strong (~19%)

 Insight: Video and social channels drive the most efficient engagement.

---

### 2. Customer Funnel Analysis

Customer progression:

* Homepage → Product Page: ~81% conversion
* Product Page → Checkout: ~55% conversion

 Major drop-off occurs between product page and checkout.

This suggests friction in decision or purchase steps.

---

### 3. Customer Sentiment

Distribution:

* Positive: ~62%
* Negative: ~17%
* Mixed Negative: ~14%
* Mixed Positive: ~6%
* Neutral: ~1%

 Overall satisfaction is strong but negative sentiment is non-trivial.

---

### 4. Ratings Overview

* Average rating: ~3.7 / 5

Indicates moderate satisfaction with room for improvement.

---

### 5. Customer Demographics

* Gender split relatively balanced
* Average age ~42 years

 Marketing strategies should target mid-career consumers.

---

### 6. Behavioral Insights

Users spend significant time across funnel stages (~150–167 seconds), suggesting:

* Strong browsing intent
* Potential hesitation before purchase

---

## Dashboard Highlights (Power BI)

The dashboard provides:

* Engagement trends by content type
* Funnel visualization
* Sentiment breakdown
* Customer segmentation
* Product performance metrics

Designed for executive decision support and exploratory analysis.

---

 Highlights importance of data governance.

---

## Business Recommendations

### Improve Checkout Conversion

* Simplify checkout flow
* Reduce form friction
* Add trust signals
* Introduce checkout reminders

---

### Double Down on Video Marketing

* Highest engagement efficiency
* Increase video campaigns and short-form content

---

### Address Negative Sentiment Drivers

* Perform root cause analysis on negative reviews
* Improve product features or support responsiveness

---

### Personalize Campaigns

* Segment by engagement behavior
* Use lifecycle targeting

---

### Optimize Product Pages

* Add clearer value propositions
* Improve UX and product information

---

## Tech Stack

* SQL Server — Data modeling
* Python — NLP sentiment analysis
* Pandas — Data processing
* NLTK — Text analysis
* Power BI — Visualization
* Excel — Data staging

---

## Project Structure

```
/data
/sql
/python
/powerbi
/docs
```

---

## Learning Outcomes

* Built full analytics pipeline
* Applied NLP in business context
* Practiced dimensional modeling
* Derived actionable marketing insights
* Created executive dashboard


## Conclusion

This project demonstrates how integrated analytics can transform raw marketing data into actionable insights, enabling smarter decisions, improved customer experiences, and optimized campaign performance.
