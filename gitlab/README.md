# Gitlab

docker stop gitlab
docker rm gitlab
docker run -dit \
    --publish 8081:80 --publish 23:22 \
    --name gitlab \
    --volume /storage/conf/gitlab:/etc/gitlab \
    --volume /storage/logs/gitlab:/var/log/gitlab \
    --volume /storage/data/gitlab:/var/opt/gitlab \
    gitlab/gitlab-ce
docker logs -f gitlab --tail 500


docker stop gitlab
docker rm gitlab
docker run -dit \
    --publish 8081:80 --publish 23:22 \
    --name gitlab \
    gitlab/gitlab-ce
docker logs -f gitlab --tail 500


修改gitlab.host相关配置
/opt/gitlab/embedded/service/gitlab-rails/config/gitlab.yml