.class public Lcom/android/dialer/contactinfo/ContactPhotoLoader;
.super Ljava/lang/Object;
.source "ContactPhotoLoader.java"


# instance fields
.field private final mContactInfo:Lcom/android/dialer/calllog/ContactInfo;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultPhotoManager:Lcom/oneplus/defaultphoto/OPContactsDefaultPhotoManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/dialer/calllog/ContactInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactInfo"    # Lcom/android/dialer/calllog/ContactInfo;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/dialer/contactinfo/ContactPhotoLoader;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calllog/ContactInfo;

    iput-object v0, p0, Lcom/android/dialer/contactinfo/ContactPhotoLoader;->mContactInfo:Lcom/android/dialer/calllog/ContactInfo;

    .line 60
    new-instance v0, Lcom/oneplus/defaultphoto/OPContactsDefaultPhotoManager;

    invoke-direct {v0, p1}, Lcom/oneplus/defaultphoto/OPContactsDefaultPhotoManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/contactinfo/ContactPhotoLoader;->mDefaultPhotoManager:Lcom/oneplus/defaultphoto/OPContactsDefaultPhotoManager;

    .line 57
    return-void
.end method

.method private createPhotoIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 93
    iget-object v3, p0, Lcom/android/dialer/contactinfo/ContactPhotoLoader;->mContactInfo:Lcom/android/dialer/calllog/ContactInfo;

    iget-object v3, v3, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    if-nez v3, :cond_0

    .line 94
    return-object v5

    .line 97
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/dialer/contactinfo/ContactPhotoLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 98
    iget-object v4, p0, Lcom/android/dialer/contactinfo/ContactPhotoLoader;->mContactInfo:Lcom/android/dialer/calllog/ContactInfo;

    iget-object v4, v4, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    .line 97
    invoke-static {v3, v4}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 100
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/dialer/contactinfo/ContactPhotoLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v1

    .line 101
    .local v1, "drawable":Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 102
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    return-object v1

    .line 104
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "drawable":Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v3, "ContactPhotoLoader"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-object v5
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 126
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 127
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 128
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 129
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 130
    return-object v0
.end method


# virtual methods
.method getIcon()Landroid/graphics/drawable/Drawable;
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/dialer/contactinfo/ContactPhotoLoader;->createPhotoIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 75
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 79
    new-instance v1, Lcom/oneplus/defaultphoto/OPDefaultImageRequest;

    iget-object v2, p0, Lcom/android/dialer/contactinfo/ContactPhotoLoader;->mContactInfo:Lcom/android/dialer/calllog/ContactInfo;

    iget-object v2, v2, Lcom/android/dialer/calllog/ContactInfo;->phonebookLabel:Ljava/lang/String;

    .line 80
    iget-object v3, p0, Lcom/android/dialer/contactinfo/ContactPhotoLoader;->mContactInfo:Lcom/android/dialer/calllog/ContactInfo;

    iget-object v3, v3, Lcom/android/dialer/calllog/ContactInfo;->lookupKey:Ljava/lang/String;

    const/4 v4, 0x0

    .line 79
    invoke-direct {v1, v2, v3, v4}, Lcom/oneplus/defaultphoto/OPDefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    .local v1, "opDefaultImageRequest":Lcom/oneplus/defaultphoto/OPDefaultImageRequest;
    iget-object v2, p0, Lcom/android/dialer/contactinfo/ContactPhotoLoader;->mDefaultPhotoManager:Lcom/oneplus/defaultphoto/OPContactsDefaultPhotoManager;

    invoke-virtual {v2, v1}, Lcom/oneplus/defaultphoto/OPContactsDefaultPhotoManager;->getDefaultLetterPhoto(Lcom/oneplus/defaultphoto/OPDefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 84
    .end local v1    # "opDefaultImageRequest":Lcom/oneplus/defaultphoto/OPDefaultImageRequest;
    :cond_0
    return-object v0
.end method

.method public loadPhotoIcon()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 67
    const-string/jumbo v1, "ContactPhotoLoader#loadPhotoIcon called on UI thread"

    invoke-static {v1}, Lcom/android/dialer/util/Assert;->assertNotUiThread(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/android/dialer/contactinfo/ContactPhotoLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 69
    .local v0, "photoSize":I
    invoke-virtual {p0}, Lcom/android/dialer/contactinfo/ContactPhotoLoader;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1, v0, v0}, Lcom/android/dialer/contactinfo/ContactPhotoLoader;->drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method
