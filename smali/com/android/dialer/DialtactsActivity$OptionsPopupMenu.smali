.class public Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;
.super Landroid/widget/PopupMenu;
.source "DialtactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OptionsPopupMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/DialtactsActivity;


# direct methods
.method public constructor <init>(Lcom/android/dialer/DialtactsActivity;Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/dialer/DialtactsActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "anchor"    # Landroid/view/View;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;->this$0:Lcom/android/dialer/DialtactsActivity;

    .line 264
    const v0, 0x800005

    invoke-direct {p0, p2, p3, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 263
    return-void
.end method


# virtual methods
.method public show()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 270
    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v5}, Lcom/android/contacts/common/util/PermissionsUtil;->hasContactsPermissions(Landroid/content/Context;)Z

    move-result v2

    .line 271
    .local v2, "hasContactsPermission":Z
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 272
    .local v3, "menu":Landroid/view/Menu;
    const v5, 0x7f0e0234

    invoke-interface {v3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 273
    .local v1, "clearFrequents":Landroid/view/MenuItem;
    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v5}, Lcom/android/dialer/DialtactsActivity;->-get6(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/ListsFragment;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 274
    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v5}, Lcom/android/dialer/DialtactsActivity;->-get6(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/ListsFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dialer/list/ListsFragment;->getSpeedDialFragment()Lcom/android/dialer/list/SpeedDialFragment;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 275
    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v5}, Lcom/android/dialer/DialtactsActivity;->-get6(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/ListsFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dialer/list/ListsFragment;->getSpeedDialFragment()Lcom/android/dialer/list/SpeedDialFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dialer/list/SpeedDialFragment;->hasFrequents()Z

    move-result v5

    .line 273
    if-eqz v5, :cond_0

    .end local v2    # "hasContactsPermission":Z
    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 278
    const v5, 0x7f0e0233

    invoke-interface {v3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 279
    const v5, 0x7f0e0235

    invoke-interface {v3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 281
    const v4, 0x7f0e0231

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 282
    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v5}, Lcom/android/contacts/common/util/PermissionsUtil;->hasPhonePermissions(Landroid/content/Context;)Z

    move-result v5

    .line 281
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 283
    const v4, 0x7f0e0230

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 285
    .local v0, "ConferDialerOption":Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-virtual {v4}, Lcom/android/dialer/DialtactsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/dialer/util/IntentUtil;->isConferDialerEnabled(Landroid/content/Context;)Z

    move-result v4

    .line 284
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 286
    invoke-super {p0}, Landroid/widget/PopupMenu;->show()V

    .line 268
    return-void

    .end local v0    # "ConferDialerOption":Landroid/view/MenuItem;
    .restart local v2    # "hasContactsPermission":Z
    :cond_0
    move v2, v4

    .line 273
    goto :goto_0
.end method
