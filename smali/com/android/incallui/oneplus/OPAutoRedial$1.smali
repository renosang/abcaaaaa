.class Lcom/android/incallui/oneplus/OPAutoRedial$1;
.super Landroid/os/Handler;
.source "OPAutoRedial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/oneplus/OPAutoRedial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/oneplus/OPAutoRedial;


# direct methods
.method constructor <init>(Lcom/android/incallui/oneplus/OPAutoRedial;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/oneplus/OPAutoRedial;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/incallui/oneplus/OPAutoRedial$1;->this$0:Lcom/android/incallui/oneplus/OPAutoRedial;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    return-void

    .line 101
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAutoRedial$1;->this$0:Lcom/android/incallui/oneplus/OPAutoRedial;

    invoke-static {v0}, Lcom/android/incallui/oneplus/OPAutoRedial;->-get0(Lcom/android/incallui/oneplus/OPAutoRedial;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/incallui/oneplus/OPAutoRedial;->-set0(Lcom/android/incallui/oneplus/OPAutoRedial;I)I

    .line 104
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAutoRedial$1;->this$0:Lcom/android/incallui/oneplus/OPAutoRedial;

    invoke-static {v0}, Lcom/android/incallui/oneplus/OPAutoRedial;->-get1(Lcom/android/incallui/oneplus/OPAutoRedial;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAutoRedial$1;->this$0:Lcom/android/incallui/oneplus/OPAutoRedial;

    invoke-static {v0}, Lcom/android/incallui/oneplus/OPAutoRedial;->-wrap1(Lcom/android/incallui/oneplus/OPAutoRedial;)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAutoRedial$1;->this$0:Lcom/android/incallui/oneplus/OPAutoRedial;

    invoke-static {v0}, Lcom/android/incallui/oneplus/OPAutoRedial;->-wrap2(Lcom/android/incallui/oneplus/OPAutoRedial;)V

    goto :goto_0

    .line 113
    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAutoRedial$1;->this$0:Lcom/android/incallui/oneplus/OPAutoRedial;

    iget-object v1, p0, Lcom/android/incallui/oneplus/OPAutoRedial$1;->this$0:Lcom/android/incallui/oneplus/OPAutoRedial;

    invoke-static {v1}, Lcom/android/incallui/oneplus/OPAutoRedial;->-get3(Lcom/android/incallui/oneplus/OPAutoRedial;)I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/oneplus/OPAutoRedial$1;->this$0:Lcom/android/incallui/oneplus/OPAutoRedial;

    invoke-static {v2}, Lcom/android/incallui/oneplus/OPAutoRedial;->-get2(Lcom/android/incallui/oneplus/OPAutoRedial;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/incallui/oneplus/OPAutoRedial;->-wrap0(Lcom/android/incallui/oneplus/OPAutoRedial;ILjava/lang/String;)V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
