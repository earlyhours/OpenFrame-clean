# Bundled remote access alternatives

Research date: 2026-10-29. These are architectural assessments, not measured CPU/RAM benchmarks.

All three options can expose an HTTP upload service to a normal phone app without a phone VPN. Reliable access behind home NAT requires a reachable public relay; bundling only a local binary does not remove this requirement. The computer must remain awake and connected. Phone background-upload scheduling remains a separate mobile OS concern.

| Option | Advantages | Disadvantages | Installer fit |
| --- | --- | --- | --- |
| frp | Apache-2.0; standalone client/server; HTTP, HTTPS, TCP and UDP; full relay ownership | OpenFrame must operate a public relay, certificates, domain allocation, tenant isolation and provisioning; antivirus false positives are documented | Strong candidate for a minimal custom relay service: bundle frpc only |
| Pangolin with Newt | Existing reverse proxy/control plane; self-hostable; Newt is the smallest connector variant and has native binaries | Larger server stack; Community Edition is AGPLv3, Enterprise has separate commercial terms; provisioning and app-compatible authentication still need integration | Good if OpenFrame wants an existing management platform rather than building its own |
| ngrok | Managed public ingress; stable assigned free hostname; HTTPS and service mode | Provider account/credentials; proprietary hosted dependency; free quotas and browser interstitial; redistribution and embedded commercial use need terms review | Good prototype or paid managed option, poor default for unrestricted photo/video backup |

The [frp repository](https://github.com/fatedier/frp) documents its Apache-2.0 license, a public-IP frps server with a LAN frpc client, supported protocols, and antivirus caveat. It supplies transport; OpenFrame still needs provisioning and security around it.

[Pangolin licensing](https://pangolin.net/faq) distinguishes AGPLv3 Community Edition from commercially licensed Enterprise Edition. [Self-hosting](https://docs.pangolin.net/about/pangolin-cloud-vs-self-hosted) requires an operator-supplied public IP, domain and listener ports. [Newt installation](https://docs.pangolin.net/manage/sites/install-newt) supports native Linux, macOS and Windows binaries, describes Newt as the smallest connector, and requires site provisioning first. Review exact component licenses and source obligations before bundling or modifying them.

[ngrok free limits](https://ngrok.com/docs/pricing-limits/free-plan-limits) currently include 1 GB/month data transfer out, 20,000 HTTP requests/month and one assigned development domain. The domain survives agent restarts. HTML browser traffic has an interstitial; programmatic API traffic is unaffected. Do not interpret outbound transfer quota as an identical inbound upload quota. Test both upload and media retrieval usage.

For local resource use, compare native connectors on the same low-end computer under idle, sustained upload, reconnect and concurrent-device loads. Record resident memory, CPU, throughput and recovery time. No comparable primary-source benchmark here supports a numerical RAM promise or a definitive performance ranking.

Cloudflare named Tunnel is another useful optional provider. A bundled cloudflared connector can serve a stable public hostname, with OpenFrame handling provisioning. However, [Cloudflare's Free/Pro maximum upload request size is 100 MB](https://developers.cloudflare.com/cache/concepts/default-cache-behavior/). Larger videos require application-level multipart/resumable uploads split across separate requests below the cap; HTTP transfer chunking alone does not solve it. [Quick Tunnels](https://developers.cloudflare.com/tunnel/get-started/quick-tunnels/) have no uptime guarantee and change hostnames on recreation, so they are unsuitable as the default persistent backup endpoint.

Recommendation: bundle frpc with an OpenFrame-operated public relay for unrestricted media requests if application-level chunk support is unavailable. Offer Cloudflare named Tunnel as an optional provider after validating chunked uploads. Pangolin/Newt makes sense when its management features justify the larger server stack. None gives a zero-operations public service merely by inclusion in the installer. This note proposes architecture only; it does not implement installer changes.
