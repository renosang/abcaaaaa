.class Lcom/android/contacts/common/list/ContactTileView$1;
.super Ljava/lang/Object;
.source "ContactTileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/list/ContactTileView;->createClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/list/ContactTileView;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/ContactTileView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/list/ContactTileView;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileView$1;->this$0:Lcom/android/contacts/common/list/ContactTileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView$1;->this$0:Lcom/android/contacts/common/list/ContactTileView;

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactTileView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView$1;->this$0:Lcom/android/contacts/common/list/ContactTileView;

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactTileView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    .line 81
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView$1;->this$0:Lcom/android/contacts/common/list/ContactTileView;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    .line 82
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileView$1;->this$0:Lcom/android/contacts/common/list/ContactTileView;

    invoke-static {v2}, Lcom/android/contacts/common/MoreContactUtils;->getTargetRectFromView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 80
    invoke-interface {v0, v1, v2}, Lcom/android/contacts/common/list/ContactTileView$Listener;->onContactSelected(Landroid/net/Uri;Landroid/graphics/Rect;)V

    .line 78
    return-void
.end method
