import { WebPlugin } from '@capacitor/core';

import type { FacebookSdkPlugin } from './definitions';

export class FacebookSdkWeb extends WebPlugin implements FacebookSdkPlugin {
  async logPurchase(options: {
    amount: string;
    currency: string;
  }): Promise<void> {
    console.log('logPurchase', options);
  }
}
