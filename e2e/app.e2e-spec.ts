import { KuxkuxeroaWebuiPage } from './app.po';

describe('kuxkuxeroa-webui App', () => {
  let page: KuxkuxeroaWebuiPage;

  beforeEach(() => {
    page = new KuxkuxeroaWebuiPage();
  });

  it('should display welcome message', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('Welcome to app!');
  });
});
