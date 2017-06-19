.class public Lcom/android/dialer/contact/ContactUpdateService;
.super Landroid/app/IntentService;
.source "ContactUpdateService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/android/dialer/contact/ContactUpdateService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/dialer/contact/ContactUpdateService;->setIntentRedelivery(Z)V

    .line 32
    return-void
.end method

.method public static createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dataId"    # J

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/dialer/contact/ContactUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v1, "phone_number_data_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 41
    return-object v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    const-string/jumbo v2, "phone_number_data_id"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 49
    .local v0, "dataId":J
    invoke-static {p0, v0, v1}, Lcom/android/contacts/common/database/ContactUpdateUtils;->setSuperPrimary(Landroid/content/Context;J)V

    .line 45
    return-void
.end method
