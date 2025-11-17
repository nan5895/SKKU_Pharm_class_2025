# 1. Microsoft에서 제공하는 Codespaces용 기본 Ubuntu 이미지 사용 (가장 호환성 좋음)
FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

# 2. 시스템 업데이트 및 Bioinformatics 툴 설치
# (apt 패키지 매니저로 설치 가능한 툴들)
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    samtools \
    bedtools \
    bcftools \
    bwa \
    ncbi-blast+ \
    fastqc \
    tree \
    unzip \
    vim \
    nano \
    # 필요한 툴을 여기에 계속 추가하면 됩니다.
    && apt-get clean -y && rm -rf /var/lib/apt/lists/*

# 3. (선택사항) apt에 없는 툴 수동 설치 예시 (예: seqtk)
# RUN git clone https://github.com/lh3/seqtk.git /tmp/seqtk \
#     && cd /tmp/seqtk && make \
#     && cp seqtk /usr/local/bin/ \
#     && rm -rf /tmp/seqtk
