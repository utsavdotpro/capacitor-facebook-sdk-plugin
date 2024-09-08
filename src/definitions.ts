export interface FacebookSdkPlugin {
  logPurchase(options: { amount: string; currency: string }): Promise<void>;
}
