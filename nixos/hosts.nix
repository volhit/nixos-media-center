# add manual hosts resolving (like /etc/hosts)

{ ... }:

{
 networking.extraHosts = ''
    108.157.4.61 themoviedb.org api.themoviedb.org
    65.9.49.79 www.themoviedb.org
    89.187.169.39 image.tmdb.org
  '';
}
