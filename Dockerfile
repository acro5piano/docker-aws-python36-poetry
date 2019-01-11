FROM circleci/python:3.6.2

ENV PYTHONUNBUFFERED 1

USER circleci

RUN curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python
ENV PATH /home/circleci/.poetry/bin:$PATH
RUN poetry config settings.virtualenvs.in-project true

RUN sudo pip install awscli fabric ansible slackclient

WORKDIR /home/circleci
CMD ["bash"]
