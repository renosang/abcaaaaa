.class Lcom/android/incallui/OPCallCardFragment$13;
.super Ljava/lang/Object;
.source "OPCallCardFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/OPCallCardFragment;->updateFabPositionForSecondaryCallInfo()V
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
    .line 1817
    iput-object p1, p0, Lcom/android/incallui/OPCallCardFragment$13;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 1820
    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment$13;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-static {v1}, Lcom/android/incallui/OPCallCardFragment;->-get15(Lcom/android/incallui/OPCallCardFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1821
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1822
    return-void

    .line 1824
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1826
    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment$13;->this$0:Lcom/android/incallui/OPCallCardFragment;

    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment$13;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-static {v2}, Lcom/android/incallui/OPCallCardFragment;->-get7(Lcom/android/incallui/OPCallCardFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/OPCallCardFragment;->onDialpadVisibilityChange(Z)V

    .line 1819
    return-void
.end method
