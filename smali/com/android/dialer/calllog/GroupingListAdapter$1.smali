.class Lcom/android/dialer/calllog/GroupingListAdapter$1;
.super Landroid/database/ContentObserver;
.source "GroupingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/GroupingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/GroupingListAdapter;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/GroupingListAdapter;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/calllog/GroupingListAdapter;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/dialer/calllog/GroupingListAdapter$1;->this$0:Lcom/android/dialer/calllog/GroupingListAdapter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/dialer/calllog/GroupingListAdapter$1;->this$0:Lcom/android/dialer/calllog/GroupingListAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/GroupingListAdapter;->onContentChanged()V

    .line 53
    return-void
.end method
