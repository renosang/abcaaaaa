.class Lcom/android/dialer/list/PhoneFavoriteTileView$2;
.super Ljava/lang/Object;
.source "PhoneFavoriteTileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/list/PhoneFavoriteTileView;->createClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/PhoneFavoriteTileView;


# direct methods
.method constructor <init>(Lcom/android/dialer/list/PhoneFavoriteTileView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/list/PhoneFavoriteTileView;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteTileView$2;->this$0:Lcom/android/dialer/list/PhoneFavoriteTileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView$2;->this$0:Lcom/android/dialer/list/PhoneFavoriteTileView;

    invoke-static {v0}, Lcom/android/dialer/list/PhoneFavoriteTileView;->-get1(Lcom/android/dialer/list/PhoneFavoriteTileView;)Lcom/android/contacts/common/list/ContactTileView$Listener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 119
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView$2;->this$0:Lcom/android/dialer/list/PhoneFavoriteTileView;

    invoke-static {v0}, Lcom/android/dialer/list/PhoneFavoriteTileView;->-get2(Lcom/android/dialer/list/PhoneFavoriteTileView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView$2;->this$0:Lcom/android/dialer/list/PhoneFavoriteTileView;

    invoke-static {v0}, Lcom/android/dialer/list/PhoneFavoriteTileView;->-get1(Lcom/android/dialer/list/PhoneFavoriteTileView;)Lcom/android/contacts/common/list/ContactTileView$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteTileView$2;->this$0:Lcom/android/dialer/list/PhoneFavoriteTileView;

    invoke-virtual {v1}, Lcom/android/dialer/list/PhoneFavoriteTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoriteTileView$2;->this$0:Lcom/android/dialer/list/PhoneFavoriteTileView;

    .line 123
    invoke-static {v2}, Lcom/android/contacts/common/MoreContactUtils;->getTargetRectFromView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/contacts/common/list/ContactTileView$Listener;->onContactSelected(Landroid/net/Uri;Landroid/graphics/Rect;)V

    .line 117
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteTileView$2;->this$0:Lcom/android/dialer/list/PhoneFavoriteTileView;

    invoke-static {v0}, Lcom/android/dialer/list/PhoneFavoriteTileView;->-get1(Lcom/android/dialer/list/PhoneFavoriteTileView;)Lcom/android/contacts/common/list/ContactTileView$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteTileView$2;->this$0:Lcom/android/dialer/list/PhoneFavoriteTileView;

    invoke-static {v1}, Lcom/android/dialer/list/PhoneFavoriteTileView;->-get2(Lcom/android/dialer/list/PhoneFavoriteTileView;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/common/list/ContactTileView$Listener;->onCallNumberDirectly(Ljava/lang/String;)V

    goto :goto_0
.end method
