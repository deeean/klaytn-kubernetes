import http from 'k6/http';

export default function () {
  for (let i = 0; i < 10; i++) {
    http.post(
      'http://localhost:8551',
      JSON.stringify({
        id: i + 1,
        jsonrpc: '2.0',
        method: 'klay_getBlockByNumber',
        params: ['latest', false],
      }),
      {
        headers: {
          'Content-Type': 'application/json',
        },
      },
    );
  }
}
