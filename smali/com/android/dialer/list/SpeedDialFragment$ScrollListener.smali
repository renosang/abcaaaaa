.class Lcom/android/dialer/list/SpeedDialFragment$ScrollListener;
.super Ljava/lang/Object;
.source "SpeedDialFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/SpeedDialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/SpeedDialFragment;


# direct methods
.method private constructor <init>(Lcom/android/dialer/list/SpeedDialFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/list/SpeedDialFragment;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/dialer/list/SpeedDialFragment$ScrollListener;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/list/SpeedDialFragment;Lcom/android/dialer/list/SpeedDialFragment$ScrollListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/list/SpeedDialFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/dialer/list/SpeedDialFragment$ScrollListener;-><init>(Lcom/android/dialer/list/SpeedDialFragment;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment$ScrollListener;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    invoke-static {v0}, Lcom/android/dialer/list/SpeedDialFragment;->-get0(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/dialer/list/OnListFragmentScrolledListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment$ScrollListener;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    invoke-static {v0}, Lcom/android/dialer/list/SpeedDialFragment;->-get0(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/dialer/list/OnListFragmentScrolledListener;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Lcom/android/dialer/list/OnListFragmentScrolledListener;->onListFragmentScroll(III)V

    .line 142
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment$ScrollListener;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    invoke-static {v0}, Lcom/android/dialer/list/SpeedDialFragment;->-get0(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/dialer/list/OnListFragmentScrolledListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/dialer/list/OnListFragmentScrolledListener;->onListFragmentScrollStateChange(I)V

    .line 150
    return-void
.end method
