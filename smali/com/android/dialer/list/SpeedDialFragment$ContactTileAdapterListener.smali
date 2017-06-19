.class Lcom/android/dialer/list/SpeedDialFragment$ContactTileAdapterListener;
.super Ljava/lang/Object;
.source "SpeedDialFragment.java"

# interfaces
.implements Lcom/android/contacts/common/list/ContactTileView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/SpeedDialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactTileAdapterListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/SpeedDialFragment;


# direct methods
.method private constructor <init>(Lcom/android/dialer/list/SpeedDialFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/list/SpeedDialFragment;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/dialer/list/SpeedDialFragment$ContactTileAdapterListener;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/list/SpeedDialFragment;Lcom/android/dialer/list/SpeedDialFragment$ContactTileAdapterListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/list/SpeedDialFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/dialer/list/SpeedDialFragment$ContactTileAdapterListener;-><init>(Lcom/android/dialer/list/SpeedDialFragment;)V

    return-void
.end method


# virtual methods
.method public getApproximateTileWidth()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment$ContactTileAdapterListener;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    invoke-virtual {v0}, Lcom/android/dialer/list/SpeedDialFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public onCallNumberDirectly(Ljava/lang/String;)V
    .locals 3
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment$ContactTileAdapterListener;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    invoke-static {v0}, Lcom/android/dialer/list/SpeedDialFragment;->-get6(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment$ContactTileAdapterListener;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    invoke-static {v0}, Lcom/android/dialer/list/SpeedDialFragment;->-get6(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    move-result-object v0

    .line 129
    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 128
    invoke-interface {v0, p1, v1, v2}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->onPickPhoneNumber(Ljava/lang/String;ZI)V

    .line 126
    :cond_0
    return-void
.end method

.method public onContactSelected(Landroid/net/Uri;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "targetRect"    # Landroid/graphics/Rect;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment$ContactTileAdapterListener;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    invoke-static {v0}, Lcom/android/dialer/list/SpeedDialFragment;->-get6(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment$ContactTileAdapterListener;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    invoke-static {v0}, Lcom/android/dialer/list/SpeedDialFragment;->-get6(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    move-result-object v0

    .line 121
    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 120
    invoke-interface {v0, p1, v1, v2}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->onPickDataUri(Landroid/net/Uri;ZI)V

    .line 118
    :cond_0
    return-void
.end method
