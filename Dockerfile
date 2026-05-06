FROM islasgeci/base:22.04
COPY . /workdir
RUN Rscript -e "remotes::install_github('IslasGECI/testtools')"
RUN make install
