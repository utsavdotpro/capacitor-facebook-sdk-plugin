import { registerPlugin } from '@capacitor/core';

import type { FacebookSdkPlugin } from './definitions';

const FacebookSdk = registerPlugin<FacebookSdkPlugin>('FacebookSdk', {
  web: () => import('./web').then(m => new m.FacebookSdkWeb()),
});

export * from './definitions';
export { FacebookSdk };
