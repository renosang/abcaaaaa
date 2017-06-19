.class Lcom/android/dialer/calllog/GroupingListAdapter$2;
.super Landroid/database/DataSetObserver;
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
.method constructor <init>(Lcom/android/dialer/calllog/GroupingListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/calllog/GroupingListAdapter;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/dialer/calllog/GroupingListAdapter$2;->this$0:Lcom/android/dialer/calllog/GroupingListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/dialer/calllog/GroupingListAdapter$2;->this$0:Lcom/android/dialer/calllog/GroupingListAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/GroupingListAdapter;->notifyDataSetChanged()V

    .line 60
    return-void
.end method
