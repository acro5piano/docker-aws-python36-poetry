FROM python:3.6.2

ENV PYTHONUNBUFFERED 1

RUN curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python
ENV PATH /root/.poetry/bin:$PATH
RUN poetry config settings.virtualenvs.in-project true

RUN pip install awscli fabric ansible slackclient

CMD ["bash"]
