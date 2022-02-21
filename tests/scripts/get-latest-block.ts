import http from 'k6/http';

export const options = {
  discardResponseBodies: true,
  scenarios: {
    contacts: {
      executor: 'per-vu-iterations',
      vus: 10,
      iterations: 100,
      maxDuration: '1h30m',
    },
  },
};

export default function () {
  for (let i = 0; i < 100; i++) {
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
