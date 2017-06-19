.class public Lcom/android/dialer/filterednumber/FilteredNumbersUtil;
.super Ljava/lang/Object;
.source "FilteredNumbersUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/filterednumber/FilteredNumbersUtil$CheckForSendToVoicemailContactListener;,
        Lcom/android/dialer/filterednumber/FilteredNumbersUtil$ContactsQuery;,
        Lcom/android/dialer/filterednumber/FilteredNumbersUtil$ImportSendToVoicemailContactsListener;,
        Lcom/android/dialer/filterednumber/FilteredNumbersUtil$PhoneQuery;
    }
.end annotation


# static fields
.field private static final DEBUG_EMERGENCY_CALL_TAG:Ljava/lang/String; = "DebugEmergencyCall"
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation
.end field

.field private static final RECENT_EMERGENCY_CALL_THRESHOLD_SETTINGS_KEY:Ljava/lang/String; = "dialer_emergency_call_threshold_ms"
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canBlockNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 352
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "normalizedNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 354
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 353
    :cond_0
    :goto_0
    return v1

    .line 354
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static checkForSendToVoicemailContact(Landroid/content/Context;Lcom/android/dialer/filterednumber/FilteredNumbersUtil$CheckForSendToVoicemailContactListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/dialer/filterednumber/FilteredNumbersUtil$CheckForSendToVoicemailContactListener;

    .prologue
    .line 124
    new-instance v0, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$1;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$1;-><init>(Landroid/content/Context;Lcom/android/dialer/filterednumber/FilteredNumbersUtil$CheckForSendToVoicemailContactListener;)V

    .line 157
    .local v0, "task":Landroid/os/AsyncTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 123
    return-void
.end method

.method private static getRecentEmergencyCallThresholdMs(Landroid/content/Context;)J
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/32 v2, 0xa4cb800

    const-wide/16 v6, 0x0

    .line 359
    const-string/jumbo v4, "DebugEmergencyCall"

    const/4 v5, 0x2

    .line 358
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 361
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 362
    const-string/jumbo v5, "dialer_emergency_call_threshold_ms"

    .line 360
    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 363
    .local v0, "thresholdMs":J
    cmp-long v4, v0, v6

    if-lez v4, :cond_0

    .end local v0    # "thresholdMs":J
    :goto_0
    return-wide v0

    .restart local v0    # "thresholdMs":J
    :cond_0
    move-wide v0, v2

    goto :goto_0

    .line 365
    .end local v0    # "thresholdMs":J
    :cond_1
    return-wide v2
.end method

.method public static hasRecentEmergencyCall(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 273
    if-nez p0, :cond_0

    .line 274
    return v1

    .line 277
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 278
    const-string/jumbo v3, "last_emergency_call_ms"

    .line 277
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 279
    .local v0, "lastEmergencyCallTime":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 280
    return v1

    .line 283
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 284
    invoke-static {p0}, Lcom/android/dialer/filterednumber/FilteredNumbersUtil;->getRecentEmergencyCallThresholdMs(Landroid/content/Context;)J

    move-result-wide v4

    .line 283
    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static importSendToVoicemailContacts(Landroid/content/Context;Lcom/android/dialer/filterednumber/FilteredNumbersUtil$ImportSendToVoicemailContactsListener;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/dialer/filterednumber/FilteredNumbersUtil$ImportSendToVoicemailContactsListener;

    .prologue
    .line 166
    const/16 v2, 0x16

    invoke-static {v2}, Lcom/android/dialer/logging/Logger;->logInteraction(I)V

    .line 168
    new-instance v0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 170
    .local v0, "mFilteredNumberAsyncQueryHandler":Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;
    new-instance v1, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$2;-><init>(Landroid/content/Context;Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;Lcom/android/dialer/filterednumber/FilteredNumbersUtil$ImportSendToVoicemailContactsListener;)V

    .line 229
    .local v1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 165
    return-void
.end method

.method public static maybeNotifyCallBlockingDisabled(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 303
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->useNewFiltering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    return-void

    .line 307
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 308
    const-string/jumbo v2, "notified_call_blocking_disabled_by_emergency_call"

    const/4 v3, 0x0

    .line 307
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    return-void

    .line 314
    :cond_1
    new-instance v0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 315
    .local v0, "queryHandler":Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;
    new-instance v1, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$3;

    invoke-direct {v1, p0}, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;->hasBlockedNumbers(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnHasBlockedNumbersListener;)V

    .line 301
    return-void
.end method

.method public static recordLastEmergencyCallTime(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 288
    if-nez p0, :cond_0

    .line 289
    return-void

    .line 292
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 294
    const-string/jumbo v1, "last_emergency_call_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 292
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 295
    const-string/jumbo v1, "notified_call_blocking_disabled_by_emergency_call"

    const/4 v2, 0x0

    .line 292
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 298
    invoke-static {p0}, Lcom/android/dialer/filterednumber/FilteredNumbersUtil;->maybeNotifyCallBlockingDisabled(Landroid/content/Context;)V

    .line 287
    return-void
.end method

.method public static shouldBlockVoicemail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "voicemailDateMs"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 238
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 239
    .local v7, "normalizedNumber":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    return v9

    .line 243
    :cond_0
    invoke-static {p0}, Lcom/android/dialer/filterednumber/FilteredNumbersUtil;->hasRecentEmergencyCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    return v9

    .line 247
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 248
    sget-object v1, Lcom/android/dialer/database/FilteredNumberContract$FilteredNumber;->CONTENT_URI:Landroid/net/Uri;

    .line 249
    new-array v2, v8, [Ljava/lang/String;

    .line 250
    const-string/jumbo v3, "creation_time"

    aput-object v3, v2, v9

    .line 252
    const-string/jumbo v3, "normalized_number=?"

    .line 253
    new-array v4, v8, [Ljava/lang/String;

    aput-object v7, v4, v9

    .line 247
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 255
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_2

    .line 256
    return v9

    .line 264
    :cond_2
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 265
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p3, p4, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 266
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 265
    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    move v0, v8

    .line 268
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 264
    return v0

    :cond_3
    move v0, v9

    .line 265
    goto :goto_0

    :cond_4
    move v0, v9

    .line 264
    goto :goto_0

    .line 267
    :catchall_0
    move-exception v0

    .line 268
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 267
    throw v0
.end method
