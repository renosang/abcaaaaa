.class Lcom/android/incallui/InCallActivity$7;
.super Ljava/lang/Thread;
.source "InCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallActivity;->opRapdiDisplayUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/InCallActivity;
    .param p2, "val$number"    # Ljava/lang/String;

    .prologue
    .line 1501
    iput-object p1, p0, Lcom/android/incallui/InCallActivity$7;->this$0:Lcom/android/incallui/InCallActivity;

    iput-object p2, p0, Lcom/android/incallui/InCallActivity$7;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$7;->this$0:Lcom/android/incallui/InCallActivity;

    iget-object v1, p0, Lcom/android/incallui/InCallActivity$7;->val$number:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/incallui/InCallActivity;->-wrap1(Lcom/android/incallui/InCallActivity;Ljava/lang/String;)V

    .line 1505
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$7;->this$0:Lcom/android/incallui/InCallActivity;

    iget-object v0, v0, Lcom/android/incallui/InCallActivity;->mHander:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1503
    return-void
.end method
