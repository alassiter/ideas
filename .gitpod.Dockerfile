FROM gitpod/workspace-postgres
USER gitpod

# Install the Ruby version specified in '.ruby-version'
COPY --chown=gitpod:gitpod .ruby-version /tmp
COPY --chown=gitpod:gitpod .setup.sh /tmp
RUN echo "rvm_gems_path=/home/gitpod/.rvm" > ~/.rvmrc
RUN bash -lc "rvm reinstall ruby-$(cat /tmp/.ruby-version) && rvm use ruby-$(cat /tmp/.ruby-version) --default && gem install rails"
RUN echo "rvm_gems_path=/workspace/.rvm" > ~/.rvmrc
RUN chmod +x /tmp/.setup.sh && /tmp/.setup.sh