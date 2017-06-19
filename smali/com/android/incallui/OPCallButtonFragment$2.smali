.class Lcom/android/incallui/OPCallButtonFragment$2;
.super Ljava/lang/Object;
.source "OPCallButtonFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/OPCallButtonFragment;->updateButtonStates()V
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
    .line 602
    iput-object p1, p0, Lcom/android/incallui/OPCallButtonFragment$2;->this$0:Lcom/android/incallui/OPCallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 605
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 606
    .local v1, "id":I
    iget-object v2, p0, Lcom/android/incallui/OPCallButtonFragment$2;->this$0:Lcom/android/incallui/OPCallButtonFragment;

    invoke-static {v2, v1}, Lcom/android/incallui/OPCallButtonFragment;->-wrap0(Lcom/android/incallui/OPCallButtonFragment;I)Landroid/view/View;

    move-result-object v0

    .line 607
    .local v0, "but":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 610
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
