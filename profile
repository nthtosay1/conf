#!MANAGED-CONFIG https://surfbd.nthtosay.workers.dev interval=604800 strict=false

[General]
dns-server = system, 8.8.8.8, 8.8.4.4, 9.9.9.9:9953
test-timeout = 1

[Proxy]
KH 1 = vmess, 220.158.233.184, 10000, username=aafd9a54-27eb-11ef-92bd-0ff47f990bc1 ,udp-relay=true, ws=true, ws-path=/vpnjantit, ws-headers=Host:m.mobilelegends.com, vmess-aead=true

TH 1 = vmess, 185.78.165.153, 10000, username=ff2fbcec-27eb-11ef-81fb-a34c2aab0ee7 ,udp-relay=true, ws=true, ws-path=/vpnjantit, ws-headers=Host:m.mobilelegends.com, vmess-aead=true

SG-HE 1 = trojan, sg1-trojan.bonds.id, 443, password=42be7010-27ec-11ef-9187-1239d0255272 ,skip-cert-verify=true, sni=m.mobilelegends.com

SG Melbi = trojan, sg-4.test3.net, 443, password=4ff1f800-2657-11ef-89bc-1239d0255272 ,skip-cert-verify=true, sni=m.mobilelegends.com

[Proxy Group]
LIST SERVER = select, AUTO, BEST PING, include-all-proxies = true

AUTO = fallback, include-all-proxies = true, url=http://www.gstatic.com/generate_204, interval=400, timeout=5

BEST PING = url-test, include-all-proxies = true, url=http://www.gstatic.com/generate_204, interval=600, tolerance=100, timeout=5

[Rule]
FINAL,LIST SERVER

[Panel]
menu = title="Profile Update", content="7day",  style=info