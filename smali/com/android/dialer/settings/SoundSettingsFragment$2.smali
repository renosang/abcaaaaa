.class Lcom/android/dialer/settings/SoundSettingsFragment$2;
.super Landroid/os/Handler;
.source "SoundSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/settings/SoundSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/settings/SoundSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/settings/SoundSettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/settings/SoundSettingsFragment;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/dialer/settings/SoundSettingsFragment$2;->this$0:Lcom/android/dialer/settings/SoundSettingsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 72
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget-object v0, p0, Lcom/android/dialer/settings/SoundSettingsFragment$2;->this$0:Lcom/android/dialer/settings/SoundSettingsFragment;

    invoke-static {v0}, Lcom/android/dialer/settings/SoundSettingsFragment;->-get0(Lcom/android/dialer/settings/SoundSettingsFragment;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
