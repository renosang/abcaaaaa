.class final Lcom/android/dialer/calllog/IntentProvider$3;
.super Lcom/android/dialer/calllog/IntentProvider;
.source "IntentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/IntentProvider;->getReturnVoicemailCallIntentProvider()Lcom/android/dialer/calllog/IntentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/dialer/calllog/IntentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    new-instance v0, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;

    invoke-static {}, Lcom/android/contacts/common/CallUtil;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;-><init>(Landroid/net/Uri;)V

    .line 89
    const/4 v1, 0x7

    .line 88
    invoke-virtual {v0, v1}, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;->setCallInitiationType(I)Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
