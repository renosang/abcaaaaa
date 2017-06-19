.class Lcom/android/dialer/dialpad/DialpadFragment$4;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$ViewProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/dialpad/DialpadFragment;->process_quote_emergency_unquote(Ljava/lang/String;)V
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
    .line 1864
    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment$4;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1867
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$4;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
