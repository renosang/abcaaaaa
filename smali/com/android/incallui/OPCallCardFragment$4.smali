.class Lcom/android/incallui/OPCallCardFragment$4;
.super Ljava/lang/Object;
.source "OPCallCardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1894
    iput-object p1, p0, Lcom/android/incallui/OPCallCardFragment$4;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment$4;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-static {v0}, Lcom/android/incallui/OPCallCardFragment;->-wrap1(Lcom/android/incallui/OPCallCardFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1899
    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment$4;->this$0:Lcom/android/incallui/OPCallCardFragment;

    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment$4;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-static {v0}, Lcom/android/incallui/OPCallCardFragment;->-wrap2(Lcom/android/incallui/OPCallCardFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/incallui/OPCallCardFragment;->-wrap6(Lcom/android/incallui/OPCallCardFragment;Z)V

    .line 1902
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment$4;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-static {v0}, Lcom/android/incallui/OPCallCardFragment;->-wrap12(Lcom/android/incallui/OPCallCardFragment;)V

    .line 1903
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment$4;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-static {v0}, Lcom/android/incallui/OPCallCardFragment;->-wrap8(Lcom/android/incallui/OPCallCardFragment;)V

    .line 1896
    return-void

    .line 1899
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
