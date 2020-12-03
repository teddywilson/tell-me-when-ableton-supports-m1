import http.server
import socketserver

# TODO(teddywilson) make these configurable
PORT = 8080
HOST = "0.0.0.0"

Handler = http.server.SimpleHTTPRequestHandler

"""Simple health check server so that Google Cloud Run doesn't
   automatically bring down the Docker container"""
with socketserver.TCPServer((HOST, PORT), Handler) as httpd:
    print("Serving health check at port", PORT)
    httpd.serve_forever()
