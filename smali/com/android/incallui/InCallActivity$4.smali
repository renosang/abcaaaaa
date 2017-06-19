.class Lcom/android/incallui/InCallActivity$4;
.super Landroid/os/Handler;
.source "InCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 1617
    iput-object p1, p0, Lcom/android/incallui/InCallActivity$4;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1620
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1619
    :goto_0
    return-void

    .line 1622
    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$4;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->-wrap2(Lcom/android/incallui/InCallActivity;)V

    goto :goto_0

    .line 1620
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
