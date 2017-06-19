.class Lcom/android/dialer/calllog/CallLogAdapter$4;
.super Landroid/view/View$AccessibilityDelegate;
.source "CallLogAdapter.java"


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
    .line 233
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAdapter$4;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "host"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 237
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const v2, 0x8000

    if-ne v1, v2, :cond_1

    .line 240
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;

    .line 241
    .local v0, "viewHolder":Lcom/android/dialer/calllog/CallLogListItemViewHolder;
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter$4;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogAdapter;->-get1(Lcom/android/dialer/calllog/CallLogAdapter;)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->getAdapterPosition()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 242
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter$4;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    iget-object v1, v1, Lcom/android/dialer/calllog/CallLogAdapter;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter$4;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    iget-object v1, v1, Lcom/android/dialer/calllog/CallLogAdapter;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->resetAll()V

    .line 247
    :cond_0
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter$4;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/calllog/CallLogListItemViewHolder;

    invoke-static {v2, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->-wrap1(Lcom/android/dialer/calllog/CallLogAdapter;Lcom/android/dialer/calllog/CallLogListItemViewHolder;)V

    .line 250
    .end local v0    # "viewHolder":Lcom/android/dialer/calllog/CallLogListItemViewHolder;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1
.end method
