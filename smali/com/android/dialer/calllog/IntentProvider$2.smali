.class final Lcom/android/dialer/calllog/IntentProvider$2;
.super Lcom/android/dialer/calllog/IntentProvider;
.source "IntentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/IntentProvider;->getReturnVideoCallIntentProvider(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Lcom/android/dialer/calllog/IntentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accountHandle:Landroid/telecom/PhoneAccountHandle;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0
    .param p1, "val$number"    # Ljava/lang/String;
    .param p2, "val$accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/dialer/calllog/IntentProvider$2;->val$number:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/dialer/calllog/IntentProvider$2;->val$accountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-direct {p0}, Lcom/android/dialer/calllog/IntentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    new-instance v0, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;

    iget-object v1, p0, Lcom/android/dialer/calllog/IntentProvider$2;->val$number:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/android/dialer/calllog/IntentProvider$2;->val$accountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 75
    invoke-virtual {v0, v1}, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;->setPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;

    move-result-object v0

    .line 77
    const/4 v1, 0x7

    .line 75
    invoke-virtual {v0, v1}, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;->setCallInitiationType(I)Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;

    move-result-object v0

    .line 78
    const/4 v1, 0x1

    .line 75
    invoke-virtual {v0, v1}, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;->setIsVideoCall(Z)Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
