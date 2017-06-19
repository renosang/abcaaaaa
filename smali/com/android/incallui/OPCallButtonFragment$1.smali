.class Lcom/android/incallui/OPCallButtonFragment$1;
.super Ljava/lang/Object;
.source "OPCallButtonFragment.java"

# interfaces
.implements Lcom/android/incallui/oneplus/record/OPUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/OPCallButtonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/OPCallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/OPCallButtonFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/OPCallButtonFragment;

    .prologue
    .line 950
    iput-object p1, p0, Lcom/android/incallui/OPCallButtonFragment$1;->this$0:Lcom/android/incallui/OPCallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3
    .param p1, "error"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment$1;->this$0:Lcom/android/incallui/OPCallButtonFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/OPCallButtonFragment;->-wrap3(Lcom/android/incallui/OPCallButtonFragment;Ljava/lang/String;)V

    .line 961
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment$1;->this$0:Lcom/android/incallui/OPCallButtonFragment;

    invoke-static {v0}, Lcom/android/incallui/OPCallButtonFragment;->-wrap1(Lcom/android/incallui/OPCallButtonFragment;)V

    .line 959
    return-void
.end method

.method public onProgressChange(IJ)V
    .locals 0
    .param p1, "recordState"    # I
    .param p2, "timePassed"    # J

    .prologue
    .line 965
    return-void
.end method

.method public onStateChange(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 954
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment$1;->this$0:Lcom/android/incallui/OPCallButtonFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStateChange state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/OPCallButtonFragment;->-wrap3(Lcom/android/incallui/OPCallButtonFragment;Ljava/lang/String;)V

    .line 955
    iget-object v0, p0, Lcom/android/incallui/OPCallButtonFragment$1;->this$0:Lcom/android/incallui/OPCallButtonFragment;

    invoke-static {v0, p1}, Lcom/android/incallui/OPCallButtonFragment;->-wrap2(Lcom/android/incallui/OPCallButtonFragment;I)V

    .line 953
    return-void
.end method
