import Caver from 'caver-js';

let caver: Caver;

beforeEach(() => {
  caver = new Caver(process.env.RPC_URL);
});

describe('Get block tests', () => {
  it('should return block', async () => {
    const latest = await caver.klay.getBlockNumber();
  });
});
