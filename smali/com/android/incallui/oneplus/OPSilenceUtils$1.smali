.class Lcom/android/incallui/oneplus/OPSilenceUtils$1;
.super Landroid/os/Handler;
.source "OPSilenceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/oneplus/OPSilenceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/oneplus/OPSilenceUtils;


# direct methods
.method constructor <init>(Lcom/android/incallui/oneplus/OPSilenceUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/oneplus/OPSilenceUtils;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/incallui/oneplus/OPSilenceUtils$1;->this$0:Lcom/android/incallui/oneplus/OPSilenceUtils;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 133
    iget v0, p1, Landroid/os/Message;->what:I

    .line 134
    .local v0, "what":I
    packed-switch v0, :pswitch_data_0

    .line 132
    :goto_0
    return-void

    .line 136
    :pswitch_0
    const-string/jumbo v1, "OPSilenceUtils"

    const-string/jumbo v2, "silenceRinger: "

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/android/incallui/oneplus/OPSilenceUtils$1;->this$0:Lcom/android/incallui/oneplus/OPSilenceUtils;

    invoke-static {v1}, Lcom/android/incallui/oneplus/OPSilenceUtils;->-wrap2(Lcom/android/incallui/oneplus/OPSilenceUtils;)V

    .line 138
    iget-object v1, p0, Lcom/android/incallui/oneplus/OPSilenceUtils$1;->this$0:Lcom/android/incallui/oneplus/OPSilenceUtils;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/incallui/oneplus/OPSilenceUtils;->-set0(Lcom/android/incallui/oneplus/OPSilenceUtils;Z)Z

    .line 139
    iget-object v1, p0, Lcom/android/incallui/oneplus/OPSilenceUtils$1;->this$0:Lcom/android/incallui/oneplus/OPSilenceUtils;

    invoke-virtual {v1}, Lcom/android/incallui/oneplus/OPSilenceUtils;->unregisterListener()V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
