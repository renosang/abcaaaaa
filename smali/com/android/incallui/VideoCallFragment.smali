.class public Lcom/android/incallui/VideoCallFragment;
.super Lcom/android/incallui/BaseFragment;
.source "VideoCallFragment.java"

# interfaces
.implements Lcom/android/incallui/VideoCallPresenter$VideoCallUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/VideoCallFragment$VideoCallSurface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/VideoCallPresenter;",
        "Lcom/android/incallui/VideoCallPresenter$VideoCallUi;",
        ">;",
        "Lcom/android/incallui/VideoCallPresenter$VideoCallUi;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sDisplaySize:Landroid/graphics/Point;

.field private static sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

.field private static sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

.field private static sVideoSurfacesInUse:Z


# instance fields
.field private mAnimationDuration:I

.field private mCameraOff:Landroid/view/View;

.field private mIsLandscape:Z

.field private mIsLayoutComplete:Z

.field private mPreviewPhoto:Landroid/widget/ImageView;

.field private mPreviewVideoContainer:Landroid/view/View;

.field private mVideoViews:Landroid/view/View;

.field private mVideoViewsStub:Landroid/view/ViewStub;


# direct methods
.method static synthetic -get0(Lcom/android/incallui/VideoCallFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/incallui/VideoCallFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/VideoCallFragment;->mIsLayoutComplete:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/incallui/VideoCallFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "displayVideo"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallFragment;->centerDisplayView(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    const-class v0, Lcom/android/incallui/VideoCallFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/VideoCallFragment;->TAG:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/VideoCallFragment;->sVideoSurfacesInUse:Z

    .line 69
    sput-object v1, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    .line 70
    sput-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    .line 71
    sput-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySize:Landroid/graphics/Point;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/VideoCallFragment;->mIsLayoutComplete:Z

    .line 41
    return-void
.end method

.method private centerDisplayView(Landroid/view/View;)V
    .locals 8
    .param p1, "displayVideo"    # Landroid/view/View;

    .prologue
    .line 462
    iget-boolean v4, p0, Lcom/android/incallui/VideoCallFragment;->mIsLandscape:Z

    if-nez v4, :cond_1

    .line 463
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 464
    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 466
    .local v0, "height":I
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getSpaceBesideCallCard()F

    move-result v2

    .line 469
    .local v2, "spaceBesideCallCard":F
    const/4 v4, 0x0

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 470
    return-void

    .line 472
    :cond_0
    div-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v2, v5

    sub-float v3, v4, v5

    .line 473
    .local v3, "videoViewTranslation":F
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 461
    .end local v0    # "height":I
    .end local v1    # "p":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "spaceBesideCallCard":F
    .end local v3    # "videoViewTranslation":F
    :cond_1
    return-void
.end method

.method private inflateVideoCallViews()V
    .locals 10

    .prologue
    const v9, 0x7f0e0207

    const/4 v2, 0x1

    const v4, 0x7f0e0205

    .line 821
    const-string/jumbo v0, "inflateVideoCallViews"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    if-nez v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViewsStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 827
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f0e0206

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewVideoContainer:Landroid/view/View;

    .line 828
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f0e0209

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mCameraOff:Landroid/view/View;

    .line 829
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f0e0208

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewPhoto:Landroid/widget/ImageView;

    .line 831
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/TextureView;

    .line 833
    .local v6, "displaySurface":Landroid/view/TextureView;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "inflateVideoCallViews: sVideoSurfacesInUse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/incallui/VideoCallFragment;->sVideoSurfacesInUse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 835
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sDisplaySize:Landroid/graphics/Point;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getScreenSize()Landroid/graphics/Point;

    move-result-object v8

    .line 836
    .local v8, "screenSize":Landroid/graphics/Point;
    :goto_0
    invoke-direct {p0, v6, v8}, Lcom/android/incallui/VideoCallFragment;->setSurfaceSizeAndTranslation(Landroid/view/TextureView;Landroid/graphics/Point;)V

    .line 838
    sget-boolean v0, Lcom/android/incallui/VideoCallFragment;->sVideoSurfacesInUse:Z

    if-nez v0, :cond_3

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " inflateVideoCallViews screenSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 843
    new-instance v0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter;

    .line 844
    iget-object v3, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/TextureView;

    iget v4, v8, Landroid/graphics/Point;->x:I

    .line 845
    iget v5, v8, Landroid/graphics/Point;->y:I

    .line 843
    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;-><init>(Lcom/android/incallui/VideoCallPresenter;ILandroid/view/TextureView;II)V

    sput-object v0, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    .line 846
    new-instance v3, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    .line 847
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    .line 846
    const/4 v4, 0x2

    invoke-direct {v3, v0, v4, v1}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;-><init>(Lcom/android/incallui/VideoCallPresenter;ILandroid/view/TextureView;)V

    sput-object v3, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    .line 848
    sput-boolean v2, Lcom/android/incallui/VideoCallFragment;->sVideoSurfacesInUse:Z

    .line 859
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    .line 860
    .local v7, "observer":Landroid/view/ViewTreeObserver;
    new-instance v0, Lcom/android/incallui/VideoCallFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/VideoCallFragment$1;-><init>(Lcom/android/incallui/VideoCallFragment;)V

    invoke-virtual {v7, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 820
    .end local v6    # "displaySurface":Landroid/view/TextureView;
    .end local v7    # "observer":Landroid/view/ViewTreeObserver;
    .end local v8    # "screenSize":Landroid/graphics/Point;
    :cond_1
    return-void

    .line 835
    .restart local v6    # "displaySurface":Landroid/view/TextureView;
    :cond_2
    sget-object v8, Lcom/android/incallui/VideoCallFragment;->sDisplaySize:Landroid/graphics/Point;

    goto :goto_0

    .line 852
    .restart local v8    # "screenSize":Landroid/graphics/Point;
    :cond_3
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->recreateView(Landroid/view/TextureView;)V

    .line 854
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->recreateView(Landroid/view/TextureView;)V

    goto :goto_1
.end method

.method private inflateVideoUi(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 535
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 536
    .local v0, "visibility":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 538
    if-eqz p1, :cond_0

    .line 539
    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment;->inflateVideoCallViews()V

    .line 542
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 543
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 534
    :cond_1
    return-void

    .line 535
    .end local v0    # "visibility":I
    :cond_2
    const/16 v0, 0x8

    .restart local v0    # "visibility":I
    goto :goto_0
.end method

.method private onPresenterChanged(Lcom/android/incallui/VideoCallPresenter;)V
    .locals 2
    .param p1, "presenter"    # Lcom/android/incallui/VideoCallPresenter;

    .prologue
    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPresenterChanged: Presenter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_0

    .line 624
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0, p1}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->resetPresenter(Lcom/android/incallui/VideoCallPresenter;)V

    .line 626
    :cond_0
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_1

    .line 627
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0, p1}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->resetPresenter(Lcom/android/incallui/VideoCallPresenter;)V

    .line 621
    :cond_1
    return-void
.end method

.method private setSurfaceSizeAndTranslation(Landroid/view/TextureView;Landroid/graphics/Point;)V
    .locals 3
    .param p1, "textureView"    # Landroid/view/TextureView;
    .param p2, "size"    # Landroid/graphics/Point;

    .prologue
    .line 890
    invoke-virtual {p1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 891
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p2, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 892
    iget v1, p2, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 893
    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 894
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSurfaceSizeAndTranslation: Size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "IsLayoutComplete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 895
    iget-boolean v2, p0, Lcom/android/incallui/VideoCallFragment;->mIsLayoutComplete:Z

    .line 894
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 895
    const-string/jumbo v2, "IsLandscape="

    .line 894
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 895
    iget-boolean v2, p0, Lcom/android/incallui/VideoCallFragment;->mIsLandscape:Z

    .line 894
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 901
    iget-boolean v1, p0, Lcom/android/incallui/VideoCallFragment;->mIsLayoutComplete:Z

    if-eqz v1, :cond_0

    .line 902
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallFragment;->centerDisplayView(Landroid/view/View;)V

    .line 888
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanupSurfaces()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 580
    const-string/jumbo v0, "cleanupSurfaces"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_0

    .line 582
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->setDoneWithSurface()V

    .line 583
    sput-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    .line 585
    :cond_0
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_1

    .line 586
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->setDoneWithSurface()V

    .line 587
    sput-object v1, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    .line 589
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/VideoCallFragment;->sVideoSurfacesInUse:Z

    .line 579
    return-void
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->createPresenter()Lcom/android/incallui/VideoCallPresenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/android/incallui/VideoCallPresenter;
    .locals 2

    .prologue
    .line 515
    const-string/jumbo v1, "createPresenter"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    new-instance v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-direct {v0}, Lcom/android/incallui/VideoCallPresenter;-><init>()V

    .line 517
    .local v0, "presenter":Lcom/android/incallui/VideoCallPresenter;
    invoke-direct {p0, v0}, Lcom/android/incallui/VideoCallFragment;->onPresenterChanged(Lcom/android/incallui/VideoCallPresenter;)V

    .line 518
    return-object v0
.end method

.method public getDisplayVideoSurface()Landroid/view/Surface;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 657
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreviewPhotoView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPreviewSize()Landroid/graphics/Point;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 803
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-nez v0, :cond_0

    .line 804
    return-object v1

    .line 806
    :cond_0
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getSurfaceDimensions()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewVideoSurface()Landroid/view/Surface;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 666
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0
.end method

.method public getScreenSize()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 789
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 790
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 791
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 793
    return-object v1
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getUi()Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    move-result-object v0

    return-object v0
.end method

.method public getUi()Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    .locals 0

    .prologue
    .line 526
    return-object p0
.end method

.method public hideVideoUi()V
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoCallFragment;->inflateVideoUi(Z)V

    .line 569
    return-void
.end method

.method public isDisplayVideoSurfaceCreated()Z
    .locals 3

    .prologue
    .line 636
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 637
    .local v0, "ret":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " isDisplayVideoSurfaceCreated returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 638
    return v0

    .line 636
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public isPreviewVideoSurfaceCreated()Z
    .locals 3

    .prologue
    .line 646
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 647
    .local v0, "ret":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " isPreviewVideoSurfaceCreated returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 648
    return v0

    .line 646
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/VideoCallFragment;->mIsLandscape:Z

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActivityCreated: IsLandscape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/VideoCallFragment;->mIsLandscape:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoCallPresenter;->init(Landroid/content/Context;)V

    .line 442
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 437
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 426
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 428
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoCallFragment;->mAnimationDuration:I

    .line 425
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 448
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 450
    const v1, 0x7f0400e5

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 452
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 505
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    .line 506
    const-string/jumbo v0, "onDestroyView:"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 499
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onPause()V

    .line 500
    const-string/jumbo v0, "onPause:"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 493
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onStop()V

    .line 494
    const-string/jumbo v0, "onStop:"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 485
    invoke-super {p0, p1, p2}, Lcom/android/incallui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onViewCreated: VideoSurfacesInUse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/incallui/VideoCallFragment;->sVideoSurfacesInUse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    const v0, 0x7f0e0203

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViewsStub:Landroid/view/ViewStub;

    .line 484
    return-void
.end method

.method public setDisplayVideoSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisplayVideoSize: width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 768
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v1, :cond_1

    .line 769
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    .line 770
    .local v0, "displayVideo":Landroid/view/TextureView;
    if-nez v0, :cond_0

    .line 771
    const-string/jumbo v1, "Display Video texture view is null. Bail out"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 772
    return-void

    .line 774
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    sput-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySize:Landroid/graphics/Point;

    .line 775
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sDisplaySize:Landroid/graphics/Point;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/VideoCallFragment;->setSurfaceSizeAndTranslation(Landroid/view/TextureView;Landroid/graphics/Point;)V

    .line 766
    .end local v0    # "displayVideo":Landroid/view/TextureView;
    :goto_0
    return-void

    .line 777
    :cond_1
    const-string/jumbo v1, "Display Video Surface is null. Bail out"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPreviewRotation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewRotation: orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 724
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v1, :cond_1

    .line 725
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    .line 727
    .local v0, "preview":Landroid/view/TextureView;
    if-nez v0, :cond_0

    .line 728
    return-void

    .line 731
    :cond_0
    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setRotation(F)V

    .line 722
    .end local v0    # "preview":Landroid/view/TextureView;
    :cond_1
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 678
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPreviewSize: width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 679
    sget-object v4, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v4, :cond_2

    .line 680
    sget-object v4, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v4}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->getTextureView()Landroid/view/TextureView;

    move-result-object v2

    .line 682
    .local v2, "preview":Landroid/view/TextureView;
    if-nez v2, :cond_0

    .line 683
    return-void

    .line 687
    :cond_0
    invoke-virtual {v2}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 688
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 689
    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 690
    invoke-virtual {v2, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 692
    iget-object v4, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewVideoContainer:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 693
    iget-object v4, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewVideoContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 694
    .local v0, "containerParams":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 695
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 696
    iget-object v4, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewVideoContainer:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 702
    .end local v0    # "containerParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 703
    .local v3, "transform":Landroid/graphics/Matrix;
    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    div-int/lit8 v6, p1, 0x2

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 704
    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 677
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "preview":Landroid/view/TextureView;
    .end local v3    # "transform":Landroid/graphics/Matrix;
    :cond_2
    return-void
.end method

.method public setPreviewSurfaceSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 737
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 738
    .local v0, "isPreviewSurfaceAvailable":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewSurfaceSize: width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 739
    const-string/jumbo v2, " isPreviewSurfaceAvailable="

    .line 738
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 740
    if-eqz v0, :cond_0

    .line 741
    sget-object v1, Lcom/android/incallui/VideoCallFragment;->sPreviewSurface:Lcom/android/incallui/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v1, p1, p2}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->setSurfaceDimensions(II)V

    .line 736
    :cond_0
    return-void

    .line 737
    .end local v0    # "isPreviewSurfaceAvailable":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isPreviewSurfaceAvailable":Z
    goto :goto_0
.end method

.method public showOutgoingVideoView(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewVideoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 812
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewVideoContainer:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 810
    :cond_0
    return-void

    .line 812
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public showVideoViews(ZZ)V
    .locals 5
    .param p1, "previewPaused"    # Z
    .param p2, "showIncoming"    # Z

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 552
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/incallui/VideoCallFragment;->inflateVideoUi(Z)V

    .line 554
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mVideoViews:Landroid/view/View;

    const v4, 0x7f0e0205

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 555
    .local v0, "incomingVideoView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 556
    if-eqz p2, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 558
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mCameraOff:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 559
    iget-object v4, p0, Lcom/android/incallui/VideoCallFragment;->mCameraOff:Landroid/view/View;

    if-nez p1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 561
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewPhoto:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 562
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment;->mPreviewPhoto:Landroid/widget/ImageView;

    if-nez p1, :cond_5

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 551
    :cond_2
    return-void

    :cond_3
    move v1, v3

    .line 556
    goto :goto_0

    :cond_4
    move v1, v3

    .line 559
    goto :goto_1

    :cond_5
    move v2, v3

    .line 562
    goto :goto_2
.end method
