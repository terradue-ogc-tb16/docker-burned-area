FROM terradue/c7-repo2cli:latest

RUN repo2cli -r https://github.com/terradue-ogc-tb16/burned-area.git

ENV PREFIX /opt/anaconda/envs/env_burned_area

ENV PATH /opt/anaconda/envs/env_burned_area/bin:$PATH
