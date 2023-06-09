FROM registry.access.redhat.com/ubi9/python-39:1-117.1686745331

WORKDIR /app

COPY --chown=1001:0 last_commit_info.py gitea_info.py github_info.py open_issues.py failed_zuul.py requirements.txt ./
USER 1001

RUN pip install --no-cache-dir -r requirements.txt

CMD sleep 60
