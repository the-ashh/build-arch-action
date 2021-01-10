FROM archlinux:latest
RUN pacman -Syu base-devel git --noconfirm --overwrite '*' && sed -i '/E_ROOT/d' /usr/bin/makepkg && gpg --keyserver keys.gnupg.net --recv-keys 38DBBDC86092693E
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
