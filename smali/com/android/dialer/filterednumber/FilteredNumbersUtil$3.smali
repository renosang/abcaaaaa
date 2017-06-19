.class final Lcom/android/dialer/filterednumber/FilteredNumbersUtil$3;
.super Ljava/lang/Object;
.source "FilteredNumbersUtil.java"

# interfaces
.implements Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnHasBlockedNumbersListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/filterednumber/FilteredNumbersUtil;->maybeNotifyCallBlockingDisabled(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "val$context"    # Landroid/content/Context;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHasBlockedNumbers(Z)V
    .locals 7
    .param p1, "hasBlockedNumbers"    # Z

    .prologue
    const/4 v6, 0x1

    .line 318
    iget-object v3, p0, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$3;->val$context:Landroid/content/Context;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 323
    iget-object v3, p0, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$3;->val$context:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 322
    check-cast v2, Landroid/app/NotificationManager;

    .line 324
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$3;->val$context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 325
    const v4, 0x7f0200c8

    .line 324
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 326
    iget-object v4, p0, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$3;->val$context:Landroid/content/Context;

    .line 327
    const v5, 0x7f0d02f3

    .line 326
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 324
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 328
    iget-object v4, p0, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$3;->val$context:Landroid/content/Context;

    .line 329
    const v5, 0x7f0d02f4

    .line 328
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 324
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 333
    .local v0, "builder":Landroid/app/Notification$Builder;
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$3;->val$context:Landroid/content/Context;

    const-class v4, Lcom/android/dialer/filterednumber/BlockedNumbersSettingsActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    .local v1, "contentIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$3;->val$context:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    .line 334
    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 338
    const-string/jumbo v3, "call_blocking"

    .line 340
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 339
    const/16 v5, 0xa

    .line 337
    invoke-virtual {v2, v3, v5, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 343
    iget-object v3, p0, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$3;->val$context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 345
    const-string/jumbo v4, "notified_call_blocking_disabled_by_emergency_call"

    .line 343
    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 317
    return-void

    .line 319
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v1    # "contentIntent":Landroid/content/Intent;
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method
