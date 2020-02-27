FROM cs16ds/server:latest
# Remove this line if you aren't going to install/use amxmodx and dproto
ADD files/plugins.ini /opt/hlds/cstrike/addons/metamod/plugins.ini
COPY files/podbot cstrike/addons/podbot
COPY files/gfx cstrike/gfx
COPY files/models cstrike/models
COPY files/overviews cstrike/overviews
COPY files/sound cstrike/sound
COPY files/sprites cstrike/sprites

# Cleanup
RUN apt remove -y curl

WORKDIR /opt/hlds

ENTRYPOINT ["/bin/hlds_run.sh"]
