.class Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$7;
.super Ljava/lang/Object;
.source "VoicemailPlaybackLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->onVoicemailArchiveSucceded(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;


# direct methods
.method constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$7;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 524
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$7;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->-get2(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)Landroid/content/Context;

    move-result-object v1

    .line 525
    const-class v2, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;

    .line 524
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 526
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$7;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->-get2(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 523
    return-void
.end method
