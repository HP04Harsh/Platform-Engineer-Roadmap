import speedtest

st = speedtest.Speedtest()

print("Testing speed...")

download = st.download() / 1_000_000
upload = st.upload() / 1_000_000

print(f"Download Speed: {download:.2f} Mbps")
print(f"Upload Speed: {upload:.2f} Mbps")