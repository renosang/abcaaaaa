.class Lcom/android/dialer/calllog/CallLogAdapter$1;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogAdapter;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/calllog/CallLogAdapter;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x3

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;

    .line 166
    .local v0, "viewHolder":Lcom/android/dialer/calllog/CallLogListItemViewHolder;
    if-nez v0, :cond_0

    .line 167
    return-void

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    iget-object v1, v1, Lcom/android/dialer/calllog/CallLogAdapter;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    iget-object v1, v1, Lcom/android/dialer/calllog/CallLogAdapter;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->resetAll()V

    .line 175
    :cond_1
    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->getAdapterPosition()I

    move-result v1

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-static {v2}, Lcom/android/dialer/calllog/CallLogAdapter;->-get1(Lcom/android/dialer/calllog/CallLogAdapter;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 177
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->showActions(Z)V

    .line 179
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->-set0(Lcom/android/dialer/calllog/CallLogAdapter;I)I

    .line 180
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3}, Lcom/android/dialer/calllog/CallLogAdapter;->-set1(Lcom/android/dialer/calllog/CallLogAdapter;J)J

    .line 164
    :goto_0
    return-void

    .line 182
    :cond_2
    iget v1, v0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->callType:I

    if-ne v1, v3, :cond_3

    .line 183
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    iget-object v1, v1, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->callIds:[J

    invoke-static {v1, v2}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->markCallAsRead(Landroid/content/Context;[J)V

    .line 184
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogAdapter;->-get0(Lcom/android/dialer/calllog/CallLogAdapter;)I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/DialtactsActivity;

    invoke-virtual {v1}, Lcom/android/dialer/DialtactsActivity;->updateTabUnreadCounts()V

    .line 188
    :cond_3
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-static {v1, v0}, Lcom/android/dialer/calllog/CallLogAdapter;->-wrap1(Lcom/android/dialer/calllog/CallLogAdapter;Lcom/android/dialer/calllog/CallLogListItemViewHolder;)V

    goto :goto_0
.end method
