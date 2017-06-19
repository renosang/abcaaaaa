.class Lcom/android/dialer/CallDetailActivity$2;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/CallDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/CallDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/CallDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$2;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$2;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$2;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v0}, Lcom/android/dialer/CallDetailActivity;->-get8(Lcom/android/dialer/CallDetailActivity;)Landroid/content/Context;

    move-result-object v0

    .line 287
    new-instance v1, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;

    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity$2;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->-wrap0(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    const/16 v2, 0xa

    .line 287
    invoke-virtual {v1, v2}, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;->setCallInitiationType(I)Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    .line 286
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 282
    return-void
.end method
