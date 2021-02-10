FROM archlinux:latest
RUN sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf && pacman -Syu base-devel git --noconfirm --overwrite '*' && sed -i '/E_ROOT/d' /usr/bin/makepkg
COPY entrypoint.sh /entrypoint.sh && gpg --keyserver keys.gnupg.net --recv-keys 38DBBDC86092693E
ENTRYPOINT ["/entrypoint.sh"]
