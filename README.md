# 🧠 Customer Churn Prediction

A project focused on analyzing and predicting customer churn using Machine Learning (Random Forest), SQL, and Power BI.

---

## 📌 Project Goal

To identify customers with a high probability of churn based on historical data and provide business stakeholders with actionable insights through visual analytics and predictive modeling.

---

## 🔧 Technologies Used

- 📊 **Power BI** — to visualize key business metrics and churn patterns
- 🐍 **Python (Pandas, scikit-learn)** — for data preprocessing and model training
- 🗄️ **SQL (T-SQL)** — to extract and prepare data from source systems
- 🌲 **Random Forest** — classification model to predict churn likelihood
- 📈 **Seaborn/Matplotlib** — to visualize feature importance and model insights

---

## 📁 Project Structure

| Folder / File         | Description                                   |
| --------------------- | --------------------------------------------- |
| `ml_model/`           | Jupyter notebook, predictions, visualizations |
| `sql/`                | SQL scripts for data extraction               |
| `data/`               | Sample input data and prediction results      |
| `Churn Analysis.pbix` | Power BI dashboard                            |
| `README.md`           | Project overview and documentation            |

---

## 📊 Power BI Dashboard

📁 File: `Churn Analysis.pbix`  
Dashboard Screenshots:

![Dashboard Screenshot](./ml_model/Screen1.png)  
![Dashboard Screenshot](./ml_model/Screen2.png)

> If you're unable to open `.pbix`, refer to the screenshots above or the demo video (optional).

---

## 🧪 Machine Learning Model

- **Algorithm**: Random Forest Classifier
- **Target Variable**: `Customer_Status` (`Stayed` / `Churned`)
- **Performance Metrics**:
  - Accuracy: **84%**
  - F1-score (Churned): **70%**
  - ROC AUC: ~**0.84**

---

## 🛠️ How to Run the Project

### 1. Clone the repository

```bash
git clone https://github.com/NikaL25/customer_churn.git
cd customer_churn
```

2. Create and activate a virtual environment (recommended)

Windows:

python -m venv venv
venv\Scripts\activate

macOS/Linux:

python3 -m venv venv
source venv/bin/activate

3. Install dependencies
   pip install -r requirements.txt

4. Launch Jupyter Notebook
   jupyter notebook ml_model/Churn_Prediction.ipynb
