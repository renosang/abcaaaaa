.class Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$4$2;
.super Ljava/lang/Object;
.source "VoicemailPlaybackLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$4;

.field final synthetic val$deleteCallback:Ljava/lang/Runnable;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$4;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$4;
    .param p2, "val$handler"    # Landroid/os/Handler;
    .param p3, "val$deleteCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$4$2;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$4;

    iput-object p2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$4$2;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$4$2;->val$deleteCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$4$2;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$4;

    iget-object v0, v0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$4;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->-get5(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->onVoicemailDeleteUndo()V

    .line 237
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$4$2;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$4$2;->val$deleteCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 235
    return-void
.end method
