.class Lcom/android/dialer/settings/SoundSettingsFragment$1;
.super Ljava/lang/Object;
.source "SoundSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 63
    iput-object p1, p0, Lcom/android/dialer/settings/SoundSettingsFragment$1;->this$0:Lcom/android/dialer/settings/SoundSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/dialer/settings/SoundSettingsFragment$1;->this$0:Lcom/android/dialer/settings/SoundSettingsFragment;

    invoke-static {v0}, Lcom/android/dialer/settings/SoundSettingsFragment;->-wrap0(Lcom/android/dialer/settings/SoundSettingsFragment;)V

    .line 65
    return-void
.end method
