.class Lcom/android/incallui/VideoCallFragment$VideoCallSurface;
.super Ljava/lang/Object;
.source "VideoCallFragment.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/VideoCallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoCallSurface"
.end annotation


# instance fields
.field private mHeight:I

.field private mIsDoneWithSurface:Z

.field private mPresenter:Lcom/android/incallui/VideoCallPresenter;

.field private mSavedSurface:Landroid/view/Surface;

.field private mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceId:I

.field private mTextureView:Landroid/view/TextureView;

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/incallui/VideoCallPresenter;ILandroid/view/TextureView;)V
    .locals 6
    .param p1, "presenter"    # Lcom/android/incallui/VideoCallPresenter;
    .param p2, "surfaceId"    # I
    .param p3, "textureView"    # Landroid/view/TextureView;

    .prologue
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    .line 136
    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;-><init>(Lcom/android/incallui/VideoCallPresenter;ILandroid/view/TextureView;II)V

    .line 135
    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/VideoCallPresenter;ILandroid/view/TextureView;II)V
    .locals 2
    .param p1, "presenter"    # Lcom/android/incallui/VideoCallPresenter;
    .param p2, "surfaceId"    # I
    .param p3, "textureView"    # Landroid/view/TextureView;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v0, -0x1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mWidth:I

    .line 126
    iput v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mHeight:I

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VideoCallSurface: surfaceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    const-string/jumbo v1, " width="

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    const-string/jumbo v1, " height="

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iput-object p1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    .line 152
    iput p4, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mWidth:I

    .line 153
    iput p5, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mHeight:I

    .line 154
    iput p2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    .line 156
    invoke-virtual {p0, p3}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->recreateView(Landroid/view/TextureView;)V

    .line 148
    return-void
.end method

.method private createSurface(II)Z
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v2, -0x1

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "createSurface mSavedSurfaceTexture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 389
    const-string/jumbo v1, " mSurfaceId ="

    .line 388
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 389
    iget v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    .line 388
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 389
    const-string/jumbo v1, " mWidth "

    .line 388
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 389
    const-string/jumbo v1, " mHeight="

    .line 388
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    if-eq p1, v2, :cond_0

    if-eq p2, v2, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 393
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    .line 394
    const/4 v0, 0x1

    return v0

    .line 396
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onSurfaceCreated()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    iget v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoCallPresenter;->onSurfaceCreated(I)V

    .line 235
    :goto_0
    return-void

    .line 239
    :cond_0
    const-string/jumbo v0, "onSurfaceTextureAvailable: Presenter is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onSurfaceDestroyed()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    iget v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoCallPresenter;->onSurfaceDestroyed(I)V

    .line 285
    :goto_0
    return-void

    .line 289
    :cond_0
    const-string/jumbo v0, "onSurfaceTextureDestroyed: Presenter is null."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onSurfaceReleased()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    iget v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoCallPresenter;->onSurfaceReleased(I)V

    .line 347
    :goto_0
    return-void

    .line 351
    :cond_0
    const-string/jumbo v0, "setDoneWithSurface: Presenter is null."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceDimensions()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 420
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mWidth:I

    iget v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    iget v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoCallPresenter;->onSurfaceClick(I)V

    .line 406
    :goto_0
    return-void

    .line 410
    :cond_0
    const-string/jumbo v0, "onClick: Presenter is null."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " onSurfaceTextureAvailable mSurfaceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " surfaceTexture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 216
    const-string/jumbo v2, " width="

    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 217
    const-string/jumbo v2, " height="

    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 217
    const-string/jumbo v2, " mSavedSurfaceTexture="

    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 217
    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " onSurfaceTextureAvailable VideoCallPresenter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_1

    .line 220
    iput-object p1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 221
    invoke-direct {p0, p2, p3}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->createSurface(II)Z

    move-result v0

    .line 230
    :goto_0
    if-eqz v0, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->onSurfaceCreated()V

    .line 207
    :cond_0
    return-void

    .line 224
    :cond_1
    const-string/jumbo v1, " onSurfaceTextureAvailable: Replacing with cached surface..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 226
    const/4 v0, 0x1

    .local v0, "surfaceCreated":Z
    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x0

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " onSurfaceTextureDestroyed mSurfaceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " surfaceTexture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 268
    const-string/jumbo v1, " SavedSurfaceTexture="

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 269
    const-string/jumbo v1, " SavedSurface="

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " onSurfaceTextureDestroyed VideoCallPresenter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->onSurfaceDestroyed()V

    .line 275
    iget-boolean v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mIsDoneWithSurface:Z

    if-eqz v0, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->onSurfaceReleased()V

    .line 277
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 279
    iput-object v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    .line 282
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mIsDoneWithSurface:Z

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 252
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 298
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 303
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 313
    return-void
.end method

.method public recreateView(Landroid/view/TextureView;)V
    .locals 3
    .param p1, "view"    # Landroid/view/TextureView;

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    if-ne v1, p1, :cond_0

    .line 171
    return-void

    .line 174
    :cond_0
    iput-object p1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    .line 175
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 176
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, p0}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 180
    .local v0, "areSameSurfaces":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recreateView: SavedSurfaceTexture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 181
    const-string/jumbo v2, " areSameSurfaces="

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    .line 188
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mIsDoneWithSurface:Z

    .line 165
    return-void

    .line 183
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 184
    iget v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mWidth:I

    iget v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mHeight:I

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->createSurface(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->onSurfaceCreated()V

    goto :goto_0
.end method

.method public resetPresenter(Lcom/android/incallui/VideoCallPresenter;)V
    .locals 2
    .param p1, "presenter"    # Lcom/android/incallui/VideoCallPresenter;

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetPresenter: CurrentPresenter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " NewPresenter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iput-object p1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mPresenter:Lcom/android/incallui/VideoCallPresenter;

    .line 191
    return-void
.end method

.method public setDoneWithSurface()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDoneWithSurface: SavedSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 330
    const-string/jumbo v1, " SavedSurfaceTexture="

    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mIsDoneWithSurface:Z

    .line 332
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 337
    invoke-direct {p0}, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->onSurfaceReleased()V

    .line 338
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 339
    iput-object v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 343
    iput-object v2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 328
    :cond_2
    return-void
.end method

.method public setSurfaceDimensions(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v2, -0x1

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSurfaceDimensions, width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    iput p1, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mWidth:I

    .line 373
    iput p2, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mHeight:I

    .line 375
    if-eq p1, v2, :cond_0

    if-eq p2, v2, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 377
    const-string/jumbo v0, "setSurfaceDimensions, mSavedSurfaceTexture is NOT equal to null."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 370
    :cond_0
    return-void
.end method
