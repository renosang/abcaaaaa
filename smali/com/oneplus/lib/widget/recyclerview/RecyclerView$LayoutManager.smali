.class public abstract Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# instance fields
.field private mIsAttachedToWindow:Z

.field private mRequestedSimpleAnimations:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5812
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 5814
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 5805
    return-void
.end method
