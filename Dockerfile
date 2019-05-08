FROM captainmalloc/alpine_glibc

ENV CONDA_ROOT="/opt/conda"
ENV PATH=${CONDA_ROOT}/bin${PATH:+:${PATH}}

RUN MINICONDA_VERSION="latest" && \
	MINICONDA_PLATFORM="Linux-x86_64" && \
	MINICONDA_BASE_URL="https://repo.anaconda.com/miniconda" && \
	MINICONDA_REL_URL="${MINICONDA_BASE_URL}/Miniconda3-${MINICONDA_VERSION}-${MINICONDA_PLATFORM}.sh" && \
	INSTALL_PREFIX="" && \
	wget ${MINICONDA_REL_URL} -O miniconda.sh && \
	bash miniconda.sh -f -b -p ${CONDA_ROOT} && \
	rm miniconda.sh && \
	conda update --all --yes && \
	conda config --set auto_update_conda False && \
	rm -r ${CONDA_ROOT}/pkgs/ && \
	mkdir -p ${CONDA_ROOT}/locks && \
	chmod 777 ${CONDA_ROOT}/locks
