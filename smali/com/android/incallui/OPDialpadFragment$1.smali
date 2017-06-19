.class Lcom/android/incallui/OPDialpadFragment$1;
.super Ljava/lang/Object;
.source "OPDialpadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/OPDialpadFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/OPDialpadFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/OPDialpadFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/OPDialpadFragment;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/incallui/OPDialpadFragment$1;->this$0:Lcom/android/incallui/OPDialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/incallui/OPDialpadFragment$1;->this$0:Lcom/android/incallui/OPDialpadFragment;

    invoke-virtual {v0}, Lcom/android/incallui/OPDialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadPresenter;->stopDtmf()V

    .line 324
    return-void
.end method
