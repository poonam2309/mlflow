FROM python
RUN pip install mlflow
EXPOSE 5000
#ENTRYPOINT mlflow ui --host 0.0.0.0
ENTRYPOINT mlflow server --backend-store-uri sqlite:///:memory --default-artifact-root ./mlruns    --host 0.0.0.0
