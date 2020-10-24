FROM continuumio/miniconda3
RUN apt update && apt install python3-mysqldb default-libmysqlclient-dev  -yq
RUN pip install mlflow sklearn jupyterlab watchdog[watchmedo] boto3
RUN conda install pymysql
ENV NB_PREFIX /
CMD ["sh","-c", "jupyter notebook --notebook-dir=/home/jovyan --ip=0.0.0.0 --no-browser --allow-root --port=8888 --NotebookApp.token='' --NotebookApp.password='' --NotebookApp.allow_origin='*' --NotebookApp.base_url=${NB_PREFIX}"]
