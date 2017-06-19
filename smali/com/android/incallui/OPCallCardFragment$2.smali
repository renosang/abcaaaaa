.class Lcom/android/incallui/OPCallCardFragment$2;
.super Landroid/os/Handler;
.source "OPCallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/OPCallCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/OPCallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/OPCallCardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/OPCallCardFragment;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/incallui/OPCallCardFragment$2;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 255
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 257
    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment$2;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-static {v1}, Lcom/android/incallui/OPCallCardFragment;->-get6(Lcom/android/incallui/OPCallCardFragment;)Lcom/android/incallui/InCallActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isCallRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment$2;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-static {v1}, Lcom/android/incallui/OPCallCardFragment;->-get6(Lcom/android/incallui/OPCallCardFragment;)Lcom/android/incallui/InCallActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getCallRecordingTime()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "recordingTime":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment$2;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-static {v1}, Lcom/android/incallui/OPCallCardFragment;->-get14(Lcom/android/incallui/OPCallCardFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment$2;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-static {v1, v0}, Lcom/android/incallui/OPCallCardFragment;->-wrap7(Lcom/android/incallui/OPCallCardFragment;Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment$2;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-static {v1}, Lcom/android/incallui/OPCallCardFragment;->-get13(Lcom/android/incallui/OPCallCardFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment$2;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-static {v1}, Lcom/android/incallui/OPCallCardFragment;->-get16(Lcom/android/incallui/OPCallCardFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/incallui/OPCallCardFragment$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
