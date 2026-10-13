cilium install \
  --version 1.19.5 \
  --set kubeProxyReplacement=true \
  --set routingMode=native \
  --set autoDirectNodeRoutes=true \
  --set ipv4NativeRoutingCIDR=10.233.64.0/18 \
  --set bpf.masquerade=true \
  --set ipam.mode=kubernetes \
  --set k8sServiceHost=192.168.120.166 \
  --set k8sServicePort=6443 \
  --set devices=ens33 \
  --set hubble.enabled=true \
  --set hubble.relay.enabled=true \
  --set hubble.ui.enabled=true \
  --set loadBalancer.acceleration=best-effort \
  --set loadBalancer.algorithm=maglev \
  --set bandwidthManager.enabled=true

# kubespray_version: 2.31.0 
# kubectl -n kube-system rollout restart daemonset/cilium
# kubectl -n kube-system rollout status daemonset/cilium --timeout=300s
# cilium status

# cilium connectivity test 

# kubectl delete ds kube-proxy -n kube-system

# ipvsadm --clear

# ip link delete kube-ipvs0

# cilium status --wait

# kubectl -n kube-system exec ds/cilium -- cilium-dbg status --verbose

## result:
#        KubeProxyReplacement: True
#        Routing: Network: Native   Host: BPF
#        Attach Mode: TCX
#        Masquerading: BPF
#        Socket LB: Enabled
#        Socket LB Coverage: Full
#        Devices: ens33 ... (Direct Routing)
#        XDP Acceleration: Best-Effort
