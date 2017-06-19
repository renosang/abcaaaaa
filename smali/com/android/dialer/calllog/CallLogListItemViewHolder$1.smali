.class Lcom/android/dialer/calllog/CallLogListItemViewHolder$1;
.super Ljava/lang/Object;
.source "CallLogListItemViewHolder.java"

# interfaces
.implements Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/CallLogListItemViewHolder;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogListItemViewHolder;

.field final synthetic val$menu:Landroid/view/ContextMenu;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogListItemViewHolder;Landroid/view/ContextMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/calllog/CallLogListItemViewHolder;
    .param p2, "val$menu"    # Landroid/view/ContextMenu;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder$1;->this$0:Lcom/android/dialer/calllog/CallLogListItemViewHolder;

    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder$1;->val$menu:Landroid/view/ContextMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckComplete(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x0

    .line 354
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder$1;->this$0:Lcom/android/dialer/calllog/CallLogListItemViewHolder;

    iput-object p1, v2, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->blockId:Ljava/lang/Integer;

    .line 355
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder$1;->this$0:Lcom/android/dialer/calllog/CallLogListItemViewHolder;

    iget-object v2, v2, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->blockId:Ljava/lang/Integer;

    if-nez v2, :cond_0

    const v1, 0x7f0d0210

    .line 357
    .local v1, "blockTitleId":I
    :goto_0
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder$1;->val$menu:Landroid/view/ContextMenu;

    .line 359
    const v3, 0x7f0e0021

    .line 357
    invoke-interface {v2, v4, v3, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 363
    .local v0, "blockItem":Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder$1;->this$0:Lcom/android/dialer/calllog/CallLogListItemViewHolder;

    .line 362
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 353
    return-void

    .line 356
    .end local v0    # "blockItem":Landroid/view/MenuItem;
    .end local v1    # "blockTitleId":I
    :cond_0
    const v1, 0x7f0d0212

    .restart local v1    # "blockTitleId":I
    goto :goto_0
.end method
