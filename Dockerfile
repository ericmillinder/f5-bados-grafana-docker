FROM grafana/grafana:5.2.2

ADD grafana-diagram-1.4.4.f5.tar.gz /var/lib/grafana/plugins
ADD f5-bados-app-master.tar.gz /var/lib/grafana/plugins
ADD v0.0.6.f5.tar.gz /var/lib/grafana/plugins

RUN grafana-cli --pluginsDir "${GF_PATHS_PLUGINS}" plugins install grafana-worldmap-panel 0.1.2 && \
    grafana-cli --pluginsDir "${GF_PATHS_PLUGINS}" plugins install natel-discrete-panel 0.0.8-pre

ENTRYPOINT [ "/run.sh" ]
