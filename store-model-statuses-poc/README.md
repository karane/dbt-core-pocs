# Store Model Results - POC


## How to Run
```bash
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt

dbt run --profiles-dir ./profiles
# check run_model_status
duckdb dbt.duckdb
# inside duckdb
select * from run_model_status;
```
