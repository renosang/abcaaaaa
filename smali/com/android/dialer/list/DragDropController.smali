.class public Lcom/android/dialer/list/DragDropController;
.super Ljava/lang/Object;
.source "DragDropController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/list/DragDropController$DragItemContainer;
    }
.end annotation


# instance fields
.field private final mDragItemContainer:Lcom/android/dialer/list/DragDropController$DragItemContainer;

.field private final mLocationOnScreen:[I

.field private final mOnDragDropListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/dialer/list/OnDragDropListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/dialer/list/DragDropController$DragItemContainer;)V
    .locals 1
    .param p1, "dragItemContainer"    # Lcom/android/dialer/list/DragDropController$DragItemContainer;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/android/dialer/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/dialer/list/DragDropController;->mLocationOnScreen:[I

    .line 32
    iput-object p1, p0, Lcom/android/dialer/list/DragDropController;->mDragItemContainer:Lcom/android/dialer/list/DragDropController$DragItemContainer;

    .line 31
    return-void
.end method


# virtual methods
.method public addOnDragDropListener(Lcom/android/dialer/list/OnDragDropListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/dialer/list/OnDragDropListener;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/dialer/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/dialer/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    return-void
.end method

.method public handleDragFinished(IIZ)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "isRemoveView"    # Z

    .prologue
    .line 72
    if-eqz p3, :cond_0

    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/android/dialer/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/list/OnDragDropListener;

    invoke-interface {v1}, Lcom/android/dialer/list/OnDragDropListener;->onDroppedOnRemove()V

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/dialer/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/android/dialer/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/list/OnDragDropListener;

    invoke-interface {v1, p1, p2}, Lcom/android/dialer/list/OnDragDropListener;->onDragFinished(II)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 71
    :cond_1
    return-void
.end method

.method public handleDragHovered(Landroid/view/View;II)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 61
    iget-object v4, p0, Lcom/android/dialer/list/DragDropController;->mLocationOnScreen:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 62
    iget-object v4, p0, Lcom/android/dialer/list/DragDropController;->mLocationOnScreen:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int v1, p2, v4

    .line 63
    .local v1, "screenX":I
    iget-object v4, p0, Lcom/android/dialer/list/DragDropController;->mLocationOnScreen:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int v2, p3, v4

    .line 64
    .local v2, "screenY":I
    iget-object v4, p0, Lcom/android/dialer/list/DragDropController;->mDragItemContainer:Lcom/android/dialer/list/DragDropController$DragItemContainer;

    invoke-interface {v4, v1, v2}, Lcom/android/dialer/list/DragDropController$DragItemContainer;->getViewForLocation(II)Lcom/android/dialer/list/PhoneFavoriteSquareTileView;

    move-result-object v3

    .line 66
    .local v3, "view":Lcom/android/dialer/list/PhoneFavoriteSquareTileView;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/dialer/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 67
    iget-object v4, p0, Lcom/android/dialer/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dialer/list/OnDragDropListener;

    invoke-interface {v4, v1, v2, v3}, Lcom/android/dialer/list/OnDragDropListener;->onDragHovered(IILcom/android/dialer/list/PhoneFavoriteSquareTileView;)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method

.method handleDragStarted(Landroid/view/View;II)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 39
    move v1, p2

    .line 40
    .local v1, "screenX":I
    move v2, p3

    .line 43
    .local v2, "screenY":I
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isNCompatible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    iget-object v4, p0, Lcom/android/dialer/list/DragDropController;->mLocationOnScreen:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 45
    iget-object v4, p0, Lcom/android/dialer/list/DragDropController;->mLocationOnScreen:[I

    aget v4, v4, v5

    add-int v1, p2, v4

    .line 46
    iget-object v4, p0, Lcom/android/dialer/list/DragDropController;->mLocationOnScreen:[I

    aget v4, v4, v6

    add-int v2, p3, v4

    .line 48
    :cond_0
    iget-object v4, p0, Lcom/android/dialer/list/DragDropController;->mDragItemContainer:Lcom/android/dialer/list/DragDropController$DragItemContainer;

    invoke-interface {v4, v1, v2}, Lcom/android/dialer/list/DragDropController$DragItemContainer;->getViewForLocation(II)Lcom/android/dialer/list/PhoneFavoriteSquareTileView;

    move-result-object v3

    .line 50
    .local v3, "tileView":Lcom/android/dialer/list/PhoneFavoriteSquareTileView;
    if-nez v3, :cond_1

    .line 51
    return v5

    .line 53
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/dialer/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 54
    iget-object v4, p0, Lcom/android/dialer/list/DragDropController;->mOnDragDropListeners:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dialer/list/OnDragDropListener;

    invoke-interface {v4, v1, v2, v3}, Lcom/android/dialer/list/OnDragDropListener;->onDragStarted(IILcom/android/dialer/list/PhoneFavoriteSquareTileView;)V

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_2
    return v6
.end method
