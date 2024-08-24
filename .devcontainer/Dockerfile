FROM nvidia/cuda:12.1.1-base-ubuntu22.04

RUN apt-get update && apt-get install --no-install-recommends -y \
    python3-pip=22.0.2+dfsg-1ubuntu0.4 \
    curl=7.81.0-1ubuntu1.16 \
    git=1:2.34.1-1ubuntu1.11 \
    sudo=1.9.9-1ubuntu2.4 \
    openssh-client=1:8.9p1-3ubuntu0.10 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN groupadd --gid ${USER_GID} ${USERNAME} \
    && useradd --uid ${USER_UID} --gid ${USER_GID} -m ${USERNAME} \
    && echo ${USERNAME} ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

USER $USERNAME

ENV PATH=/home/$USERNAME/.local/bin:$PATH
