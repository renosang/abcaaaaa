.class public Lcom/android/incallui/AudioModeProvider;
.super Ljava/lang/Object;
.source "AudioModeProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/AudioModeProvider$AudioModeListener;
    }
.end annotation


# static fields
.field private static sAudioModeProvider:Lcom/android/incallui/AudioModeProvider;


# instance fields
.field private ignoreFirstChange:Z

.field private mAudioMode:I

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/AudioModeProvider$AudioModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMuted:Z

.field private mSupportedModes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/android/incallui/AudioModeProvider;

    invoke-direct {v0}, Lcom/android/incallui/AudioModeProvider;-><init>()V

    sput-object v0, Lcom/android/incallui/AudioModeProvider;->sAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/AudioModeProvider;->mAudioMode:I

    .line 34
    iput-boolean v1, p0, Lcom/android/incallui/AudioModeProvider;->mMuted:Z

    .line 35
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/incallui/AudioModeProvider;->mSupportedModes:I

    .line 38
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/AudioModeProvider;->mListeners:Ljava/util/List;

    .line 40
    iput-boolean v1, p0, Lcom/android/incallui/AudioModeProvider;->ignoreFirstChange:Z

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/android/incallui/AudioModeProvider;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/incallui/AudioModeProvider;->sAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/AudioModeProvider$AudioModeListener;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/incallui/AudioModeProvider;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/incallui/AudioModeProvider;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget v0, p0, Lcom/android/incallui/AudioModeProvider;->mSupportedModes:I

    invoke-interface {p1, v0}, Lcom/android/incallui/AudioModeProvider$AudioModeListener;->onSupportedAudioMode(I)V

    .line 101
    iget v0, p0, Lcom/android/incallui/AudioModeProvider;->mAudioMode:I

    invoke-interface {p1, v0}, Lcom/android/incallui/AudioModeProvider$AudioModeListener;->onAudioMode(I)V

    .line 102
    iget-boolean v0, p0, Lcom/android/incallui/AudioModeProvider;->mMuted:Z

    invoke-interface {p1, v0}, Lcom/android/incallui/AudioModeProvider$AudioModeListener;->onMute(Z)V

    .line 97
    :cond_0
    return-void
.end method

.method public getAudioMode()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/android/incallui/AudioModeProvider;->mAudioMode:I

    return v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/incallui/AudioModeProvider;->mMuted:Z

    return v0
.end method

.method public getSupportedModes()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/android/incallui/AudioModeProvider;->mSupportedModes:I

    return v0
.end method

.method public onAudioModeChange(IZ)V
    .locals 6
    .param p1, "newMode"    # I
    .param p2, "muted"    # Z

    .prologue
    const/4 v5, 0x0

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the new mode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    .line 56
    iput-boolean v5, p0, Lcom/android/incallui/AudioModeProvider;->ignoreFirstChange:Z

    .line 58
    :cond_0
    iget-boolean v3, p0, Lcom/android/incallui/AudioModeProvider;->ignoreFirstChange:Z

    if-eqz v3, :cond_2

    .line 59
    iput-boolean v5, p0, Lcom/android/incallui/AudioModeProvider;->ignoreFirstChange:Z

    .line 60
    iget-boolean v3, p0, Lcom/android/incallui/AudioModeProvider;->mMuted:Z

    if-eq v3, p2, :cond_1

    .line 61
    iput-boolean p2, p0, Lcom/android/incallui/AudioModeProvider;->mMuted:Z

    .line 62
    iget-object v3, p0, Lcom/android/incallui/AudioModeProvider;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AudioModeProvider$AudioModeListener;

    .line 63
    .local v1, "l":Lcom/android/incallui/AudioModeProvider$AudioModeListener;
    iget-boolean v3, p0, Lcom/android/incallui/AudioModeProvider;->mMuted:Z

    invoke-interface {v1, v3}, Lcom/android/incallui/AudioModeProvider$AudioModeListener;->onMute(Z)V

    goto :goto_0

    .line 66
    .end local v1    # "l":Lcom/android/incallui/AudioModeProvider$AudioModeListener;
    .end local v2    # "l$iterator":Ljava/util/Iterator;
    :cond_1
    return-void

    .line 70
    :cond_2
    iget v3, p0, Lcom/android/incallui/AudioModeProvider;->mAudioMode:I

    if-eq v3, p1, :cond_4

    .line 71
    iput p1, p0, Lcom/android/incallui/AudioModeProvider;->mAudioMode:I

    .line 72
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 73
    .local v0, "inCallActivity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/OPCallCardFragment;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 74
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/OPCallCardFragment;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/incallui/OPCallCardFragment;->updateVbByAudioMode(I)V

    .line 76
    :cond_3
    iget-object v3, p0, Lcom/android/incallui/AudioModeProvider;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "l$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AudioModeProvider$AudioModeListener;

    .line 77
    .restart local v1    # "l":Lcom/android/incallui/AudioModeProvider$AudioModeListener;
    iget v3, p0, Lcom/android/incallui/AudioModeProvider;->mAudioMode:I

    invoke-interface {v1, v3}, Lcom/android/incallui/AudioModeProvider$AudioModeListener;->onAudioMode(I)V

    goto :goto_1

    .line 81
    .end local v0    # "inCallActivity":Lcom/android/incallui/InCallActivity;
    .end local v1    # "l":Lcom/android/incallui/AudioModeProvider$AudioModeListener;
    .end local v2    # "l$iterator":Ljava/util/Iterator;
    :cond_4
    iget-boolean v3, p0, Lcom/android/incallui/AudioModeProvider;->mMuted:Z

    if-eq v3, p2, :cond_5

    .line 82
    iput-boolean p2, p0, Lcom/android/incallui/AudioModeProvider;->mMuted:Z

    .line 83
    iget-object v3, p0, Lcom/android/incallui/AudioModeProvider;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "l$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AudioModeProvider$AudioModeListener;

    .line 84
    .restart local v1    # "l":Lcom/android/incallui/AudioModeProvider$AudioModeListener;
    iget-boolean v3, p0, Lcom/android/incallui/AudioModeProvider;->mMuted:Z

    invoke-interface {v1, v3}, Lcom/android/incallui/AudioModeProvider$AudioModeListener;->onMute(Z)V

    goto :goto_2

    .line 52
    .end local v1    # "l":Lcom/android/incallui/AudioModeProvider$AudioModeListener;
    .end local v2    # "l$iterator":Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method public onAudioStateChanged(ZII)V
    .locals 0
    .param p1, "isMuted"    # Z
    .param p2, "route"    # I
    .param p3, "supportedRouteMask"    # I

    .prologue
    .line 48
    invoke-virtual {p0, p2, p1}, Lcom/android/incallui/AudioModeProvider;->onAudioModeChange(IZ)V

    .line 49
    invoke-virtual {p0, p3}, Lcom/android/incallui/AudioModeProvider;->onSupportedAudioModeChange(I)V

    .line 47
    return-void
.end method

.method public onSupportedAudioModeChange(I)V
    .locals 3
    .param p1, "newModeMask"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/android/incallui/AudioModeProvider;->mSupportedModes:I

    .line 92
    iget-object v2, p0, Lcom/android/incallui/AudioModeProvider;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AudioModeProvider$AudioModeListener;

    .line 93
    .local v0, "l":Lcom/android/incallui/AudioModeProvider$AudioModeListener;
    iget v2, p0, Lcom/android/incallui/AudioModeProvider;->mSupportedModes:I

    invoke-interface {v0, v2}, Lcom/android/incallui/AudioModeProvider$AudioModeListener;->onSupportedAudioMode(I)V

    goto :goto_0

    .line 89
    .end local v0    # "l":Lcom/android/incallui/AudioModeProvider$AudioModeListener;
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/AudioModeProvider$AudioModeListener;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/incallui/AudioModeProvider;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/incallui/AudioModeProvider;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 106
    :cond_0
    return-void
.end method
