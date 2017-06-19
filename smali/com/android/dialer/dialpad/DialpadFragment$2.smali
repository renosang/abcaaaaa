.class Lcom/android/dialer/dialpad/DialpadFragment$2;
.super Landroid/widget/PopupMenu;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/dialpad/DialpadFragment;->buildOptionsMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/dialpad/DialpadFragment;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/dialpad/DialpadFragment;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Landroid/view/View;

    .prologue
    .line 936
    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct {p0, p2, p3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public show()V
    .locals 7

    .prologue
    .line 939
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment$2;->getMenu()Landroid/view/Menu;

    move-result-object v4

    .line 942
    .local v4, "menu":Landroid/view/Menu;
    const v5, 0x7f0e022c

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 943
    .local v0, "conferDialerOption":Landroid/view/MenuItem;
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v5}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/dialer/util/IntentUtil;->isConferDialerEnabled(Landroid/content/Context;)Z

    move-result v5

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 945
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-static {v5}, Lcom/android/dialer/dialpad/DialpadFragment;->-wrap1(Lcom/android/dialer/dialpad/DialpadFragment;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x0

    .line 946
    .local v1, "enable":Z
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v4}, Landroid/view/Menu;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 947
    invoke-interface {v4, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 948
    .local v3, "item":Landroid/view/MenuItem;
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 949
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    const v6, 0x7f0e022f

    if-ne v5, v6, :cond_0

    .line 950
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v5}, Lcom/android/dialer/dialpad/DialpadFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/common/CallUtil;->isCallWithSubjectSupported(Landroid/content/Context;)Z

    move-result v5

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 946
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 945
    .end local v1    # "enable":Z
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/view/MenuItem;
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "enable":Z
    goto :goto_0

    .line 953
    .restart local v2    # "i":I
    :cond_2
    invoke-super {p0}, Landroid/widget/PopupMenu;->show()V

    .line 938
    return-void
.end method
