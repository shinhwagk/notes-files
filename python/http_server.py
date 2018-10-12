from http.server import HTTPServer, BaseHTTPRequestHandler
import json


host = ('localhost', 8888)


class WebHook(BaseHTTPRequestHandler):
    def do_POST(self):
        data = self.rfile.read(int(self.headers['content-length'])).decode('utf-8')
        print(data)
        self.send_response(201)
        self.end_headers()
        self.wfile.write('OK'.encode('UTF-8'))

    def do_GET(self):
        self.send_response(201)
        self.end_headers()
        self.wfile.write('OK'.encode('UTF-8'))


if __name__ == '__main__':
    server = HTTPServer(host, WebHook)
    print('Prometheus Alertmanger Webhook, listen at: %s:%s' % host)
    server.serve_forever()
