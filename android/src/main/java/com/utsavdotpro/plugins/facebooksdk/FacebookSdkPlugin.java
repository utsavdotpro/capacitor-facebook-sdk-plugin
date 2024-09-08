package com.utsavdotpro.plugins.facebooksdk;

import com.facebook.appevents.AppEventsLogger;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

import java.math.BigDecimal;
import java.util.Currency;
import java.util.logging.Logger;

@CapacitorPlugin(name = "FacebookSdk")
public class FacebookSdkPlugin extends Plugin {

  private final FacebookSdk facebookSdk = new FacebookSdk();

  @PluginMethod
  public void logPurchase(PluginCall call) {
    String currency = call.getString("currency");
    String amount = call.getString("amount");

    Logger.getLogger("Purchase logged for").info(currency + " " + amount);

    final AppEventsLogger logger = AppEventsLogger.newLogger(getContext());
    logger.logPurchase(new BigDecimal(amount), Currency.getInstance(currency));

    call.resolve();
  }
}
