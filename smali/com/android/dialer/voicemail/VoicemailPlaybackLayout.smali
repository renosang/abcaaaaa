.class public Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;
.super Landroid/widget/LinearLayout;
.source "VoicemailPlaybackLayout.java"

# interfaces
.implements Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
.implements Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$1;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$2;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$3;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$4;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$5;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$6;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$Tasks;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mIsArchiving:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mArchiveButton:Landroid/widget/ImageButton;

.field private final mArchiveButtonListener:Landroid/view/View$OnClickListener;

.field private mArchiveSpace:Landroid/widget/Space;

.field private final mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

.field private mContext:Landroid/content/Context;

.field private mDeleteButton:Landroid/widget/ImageButton;

.field private final mDeleteButtonListener:Landroid/view/View$OnClickListener;

.field private mIsPlaying:Z

.field private mPlaybackSeek:Landroid/widget/SeekBar;

.field private mPlaybackSpeakerphone:Landroid/widget/ImageButton;

.field private mPositionText:Landroid/widget/TextView;

.field private mPositionUpdater:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;

.field private mPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

.field private final mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mShareButton:Landroid/widget/ImageButton;

.field private final mShareButtonListener:Landroid/view/View$OnClickListener;

.field private mShareSpace:Landroid/widget/Space;

.field private final mSpeakerphoneListener:Landroid/view/View$OnClickListener;

.field private mStartStopButton:Landroid/widget/ImageButton;

.field private final mStartStopButtonListener:Landroid/view/View$OnClickListener;

.field private mStateText:Landroid/widget/TextView;

.field private mTotalDurationText:Landroid/widget/TextView;

.field private mVoicemailSeekHandleDisabled:Landroid/graphics/drawable/Drawable;

.field private mVoicemailSeekHandleEnabled:Landroid/graphics/drawable/Drawable;

.field private mVoicemailUri:Landroid/net/Uri;


# direct methods
.method static synthetic -get0(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mArchiveButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)Landroid/widget/Space;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mArchiveSpace:Landroid/widget/Space;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mIsArchiving:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mIsPlaying:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mVoicemailUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->isArchiving(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;Landroid/net/Uri;)V
    .locals 0
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->updateArchiveUI(Landroid/net/Uri;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->TAG:Ljava/lang/String;

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mIsArchiving:Ljava/util/ArrayList;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 303
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 302
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 307
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$1;

    invoke-direct {v1, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$1;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)V

    iput-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 177
    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$2;

    invoke-direct {v1, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$2;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)V

    iput-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mSpeakerphoneListener:Landroid/view/View$OnClickListener;

    .line 189
    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$3;

    invoke-direct {v1, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$3;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)V

    iput-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mStartStopButtonListener:Landroid/view/View$OnClickListener;

    .line 204
    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$4;

    invoke-direct {v1, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$4;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)V

    iput-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mDeleteButtonListener:Landroid/view/View$OnClickListener;

    .line 247
    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$5;

    invoke-direct {v1, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$5;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)V

    iput-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mArchiveButtonListener:Landroid/view/View$OnClickListener;

    .line 261
    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$6;

    invoke-direct {v1, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$6;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)V

    iput-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mShareButtonListener:Landroid/view/View$OnClickListener;

    .line 276
    invoke-static {}, Lcom/android/dialer/util/AsyncTaskExecutors;->createAsyncTaskExecutor()Lcom/android/dialer/util/AsyncTaskExecutor;

    move-result-object v1

    .line 275
    iput-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    .line 277
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mIsPlaying:Z

    .line 308
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mContext:Landroid/content/Context;

    .line 310
    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 311
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0400e9

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 306
    return-void
.end method

.method private formatAsMinutesAndSeconds(I)Ljava/lang/String;
    .locals 6
    .param p1, "millis"    # I

    .prologue
    .line 494
    div-int/lit16 v1, p1, 0x3e8

    .line 495
    .local v1, "seconds":I
    div-int/lit8 v0, v1, 0x3c

    .line 496
    .local v0, "minutes":I
    mul-int/lit8 v2, v0, 0x3c

    sub-int/2addr v1, v2

    .line 497
    const/16 v2, 0x63

    if-le v0, v2, :cond_0

    .line 498
    const/16 v0, 0x63

    .line 500
    :cond_0
    const-string/jumbo v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isArchiving(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 571
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mIsArchiving:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onVoicemailArchiveResult()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 562
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->enableUiElements()V

    .line 563
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mStateText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mArchiveButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 561
    return-void
.end method

.method private updateArchiveButton(Landroid/net/Uri;)V
    .locals 4
    .param p1, "voicemailUri"    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 597
    if-eqz p1, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mVoicemailUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->isArchiving(Landroid/net/Uri;)Z

    move-result v0

    .line 597
    if-nez v0, :cond_0

    .line 599
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/database/VoicemailArchiveContract;->AUTHORITY:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 597
    if-eqz v0, :cond_1

    .line 600
    :cond_0
    return-void

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$Tasks;->QUERY_ARCHIVED_STATUS:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$Tasks;

    .line 603
    new-instance v2, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$8;

    invoke-direct {v2, p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$8;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;Landroid/net/Uri;)V

    .line 602
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 596
    return-void
.end method

.method private updateArchiveUI(Landroid/net/Uri;)V
    .locals 3
    .param p1, "voicemailUri"    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mVoicemailUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    return-void

    .line 581
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->isArchiving(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 583
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->disableUiElements()V

    .line 584
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mDeleteButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 585
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mArchiveButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a033c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 586
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mStateText:Landroid/widget/TextView;

    const v1, 0x7f0d022f

    invoke-direct {p0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    :goto_0
    return-void

    .line 588
    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->onVoicemailArchiveResult()V

    goto :goto_0
.end method


# virtual methods
.method public disableUiElements()V
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mStartStopButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 454
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->resetSeekBar()V

    .line 452
    return-void
.end method

.method public enableUiElements()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 459
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 460
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mStartStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 461
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 462
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPlaybackSeek:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mVoicemailSeekHandleEnabled:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 458
    return-void
.end method

.method public getDesiredClipPosition()I
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public getStateText()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mStateText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideArchiveButton()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 551
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mArchiveSpace:Landroid/widget/Space;

    invoke-virtual {v0, v2}, Landroid/widget/Space;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mArchiveButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 553
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mArchiveButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 554
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mArchiveButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 550
    return-void
.end method

.method public onDeleteCall()V
    .locals 0

    .prologue
    .line 473
    return-void
.end method

.method public onDeleteVoicemail()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->onVoicemailDeletedInDatabase()V

    .line 476
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 332
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 334
    const v0, 0x7f0e020d

    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPlaybackSeek:Landroid/widget/SeekBar;

    .line 335
    const v0, 0x7f0e0210

    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mStartStopButton:Landroid/widget/ImageButton;

    .line 336
    const v0, 0x7f0e020f

    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    .line 337
    const v0, 0x7f0e0211

    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mDeleteButton:Landroid/widget/ImageButton;

    .line 338
    const v0, 0x7f0e0215

    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mArchiveButton:Landroid/widget/ImageButton;

    .line 339
    const v0, 0x7f0e0213

    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mShareButton:Landroid/widget/ImageButton;

    .line 341
    const v0, 0x7f0e0214

    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mArchiveSpace:Landroid/widget/Space;

    .line 342
    const v0, 0x7f0e0212

    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mShareSpace:Landroid/widget/Space;

    .line 344
    const v0, 0x7f0e020b

    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mStateText:Landroid/widget/TextView;

    .line 345
    const v0, 0x7f0e020c

    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPositionText:Landroid/widget/TextView;

    .line 346
    const v0, 0x7f0e020e

    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mTotalDurationText:Landroid/widget/TextView;

    .line 348
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPlaybackSeek:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 349
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mStartStopButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mStartStopButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mSpeakerphoneListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mDeleteButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mDeleteButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mArchiveButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mArchiveButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mShareButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mShareButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPositionText:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->formatAsMinutesAndSeconds(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mTotalDurationText:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->formatAsMinutesAndSeconds(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f02014b

    .line 358
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mVoicemailSeekHandleEnabled:Landroid/graphics/drawable/Drawable;

    .line 360
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f02014c

    .line 360
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mVoicemailSeekHandleDisabled:Landroid/graphics/drawable/Drawable;

    .line 331
    return-void
.end method

.method public onGetCallDetails([Lcom/android/dialer/PhoneCallDetails;)V
    .locals 0
    .param p1, "details"    # [Lcom/android/dialer/PhoneCallDetails;

    .prologue
    .line 481
    return-void
.end method

.method public onPlaybackError()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPositionUpdater:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPositionUpdater:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;->stopUpdating()V

    .line 396
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->disableUiElements()V

    .line 397
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mStateText:Landroid/widget/TextView;

    const v1, 0x7f0d022d

    invoke-direct {p0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    return-void
.end method

.method public onPlaybackStarted(ILjava/util/concurrent/ScheduledExecutorService;)V
    .locals 3
    .param p1, "duration"    # I
    .param p2, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    const/4 v2, 0x0

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mIsPlaying:Z

    .line 368
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mStartStopButton:Landroid/widget/ImageButton;

    const v1, 0x7f020116

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 370
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPositionUpdater:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPositionUpdater:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;->stopUpdating()V

    .line 372
    iput-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPositionUpdater:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    .line 374
    :cond_0
    new-instance v0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;ILjava/util/concurrent/ScheduledExecutorService;)V

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPositionUpdater:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    .line 375
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPositionUpdater:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;->startUpdating()V

    .line 365
    return-void
.end method

.method public onPlaybackStopped()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mIsPlaying:Z

    .line 382
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mStartStopButton:Landroid/widget/ImageButton;

    const v1, 0x7f02011f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 384
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPositionUpdater:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPositionUpdater:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;->stopUpdating()V

    .line 386
    iput-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPositionUpdater:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    .line 379
    :cond_0
    return-void
.end method

.method public onSpeakerphoneOn(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 402
    if-eqz p1, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    const v1, 0x7f02014e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 405
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    .line 406
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f0d02d5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 405
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 401
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    const v1, 0x7f02014d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 410
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    .line 411
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f0d02d4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 410
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onVoicemailArchiveFailed(Landroid/net/Uri;)V
    .locals 3
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    .line 540
    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->isArchiving(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    sget-object v1, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mIsArchiving:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 542
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mVoicemailUri:Landroid/net/Uri;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    invoke-direct {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->onVoicemailArchiveResult()V

    .line 546
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f0d02eb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "toastStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 539
    return-void
.end method

.method public onVoicemailArchiveSucceded(Landroid/net/Uri;)V
    .locals 3
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    .line 509
    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->isArchiving(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mIsArchiving:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 511
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mVoicemailUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    invoke-direct {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->onVoicemailArchiveResult()V

    .line 513
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->hideArchiveButton()V

    .line 517
    :cond_0
    const v0, 0x7f0d021c

    .line 518
    const/4 v1, 0x0

    .line 517
    invoke-static {p0, v0, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 519
    const/16 v1, 0xbb8

    .line 517
    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar;->setDuration(I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 521
    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$7;

    invoke-direct {v1, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$7;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;)V

    .line 520
    const v2, 0x7f0d021e

    .line 517
    invoke-virtual {v0, v2, v1}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 530
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0339

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 517
    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar;->setActionTextColor(I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 508
    return-void
.end method

.method public resetSeekBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 467
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 468
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 469
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPlaybackSeek:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mVoicemailSeekHandleDisabled:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 466
    return-void
.end method

.method public setClipPosition(II)V
    .locals 4
    .param p1, "positionMs"    # I
    .param p2, "durationMs"    # I

    .prologue
    .line 417
    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 418
    .local v1, "seekBarPositionMs":I
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 419
    .local v0, "seekBarMax":I
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 420
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 423
    :cond_0
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 425
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPositionText:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->formatAsMinutesAndSeconds(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mTotalDurationText:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->formatAsMinutesAndSeconds(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    return-void
.end method

.method public setFetchContentTimeout()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mStartStopButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 443
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mStateText:Landroid/widget/TextView;

    const v1, 0x7f0d0230

    invoke-direct {p0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    return-void
.end method

.method public setIsFetchingContent()V
    .locals 2

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->disableUiElements()V

    .line 437
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mStateText:Landroid/widget/TextView;

    const v1, 0x7f0d022e

    invoke-direct {p0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    return-void
.end method

.method public setPresenter(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Landroid/net/Uri;)V
    .locals 2
    .param p1, "presenter"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    .param p2, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 316
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .line 317
    iput-object p2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mVoicemailUri:Landroid/net/Uri;

    .line 318
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialerbind/ObjectFactory;->isVoicemailArchiveEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mVoicemailUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->updateArchiveUI(Landroid/net/Uri;)V

    .line 320
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mVoicemailUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->updateArchiveButton(Landroid/net/Uri;)V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialerbind/ObjectFactory;->isVoicemailShareEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mShareSpace:Landroid/widget/Space;

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mShareButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 315
    :cond_1
    return-void
.end method

.method public setSuccess()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->mStateText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    return-void
.end method
