import { FacebookSdk } from 'facebook-sdk-plugin';

window.testEcho = () => {
  FacebookSdk.logPurchase({ amount: '10', currency: 'INR' });
};
