docker run -e MESOS_MASTER=zk://192.168.16.129:2181/mesos --name mesos.slave --net host -v /sys/fs/cgroup:/sys/fs/cgroup -v /var/run/docker.sock:/var/run/docker.sock mesos-agent:1.2.0 mesos-slave --work_dir=/tmp --no-systemd_enable_support --containerizers=docker,mesos
