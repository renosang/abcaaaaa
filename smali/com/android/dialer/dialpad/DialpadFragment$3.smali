.class Lcom/android/dialer/dialpad/DialpadFragment$3;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Lcom/android/phone/common/CallLogAsync$OnLastOutgoingCallComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/dialpad/DialpadFragment;->queryLastOutgoingCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/dialpad/DialpadFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/dialpad/DialpadFragment;

    .prologue
    .line 1794
    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment$3;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lastOutgoingCall(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$3;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1804
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$3;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-static {v0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->-set0(Lcom/android/dialer/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1805
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$3;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->-wrap3(Lcom/android/dialer/dialpad/DialpadFragment;)V

    .line 1796
    return-void
.end method
