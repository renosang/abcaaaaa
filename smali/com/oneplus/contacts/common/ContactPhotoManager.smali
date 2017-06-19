.class public abstract Lcom/oneplus/contacts/common/ContactPhotoManager;
.super Ljava/lang/Object;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/contacts/common/ContactPhotoManager$BlankDefaultImageProvider;,
        Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;,
        Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;,
        Lcom/oneplus/contacts/common/ContactPhotoManager$OPLetterDefaultImageProvider;
    }
.end annotation


# static fields
.field public static DEFAULT_AVATAR:Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;

.field public static final DEFAULT_BLANK:Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;

.field private static final DEFAULT_IMAGE_URI:Landroid/net/Uri;

.field private static sDefaultLetterAvatar:Landroid/graphics/drawable/Drawable;

.field private static sInstance:Lcom/oneplus/contacts/common/ContactPhotoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    const-string/jumbo v0, "defaultimage://"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/contacts/common/ContactPhotoManager;->DEFAULT_IMAGE_URI:Landroid/net/Uri;

    .line 120
    sput-object v1, Lcom/oneplus/contacts/common/ContactPhotoManager;->sDefaultLetterAvatar:Landroid/graphics/drawable/Drawable;

    .line 496
    new-instance v0, Lcom/oneplus/contacts/common/ContactPhotoManager$OPLetterDefaultImageProvider;

    invoke-direct {v0, v1}, Lcom/oneplus/contacts/common/ContactPhotoManager$OPLetterDefaultImageProvider;-><init>(Lcom/oneplus/contacts/common/ContactPhotoManager$OPLetterDefaultImageProvider;)V

    sput-object v0, Lcom/oneplus/contacts/common/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;

    .line 502
    new-instance v0, Lcom/oneplus/contacts/common/ContactPhotoManager$BlankDefaultImageProvider;

    invoke-direct {v0, v1}, Lcom/oneplus/contacts/common/ContactPhotoManager$BlankDefaultImageProvider;-><init>(Lcom/oneplus/contacts/common/ContactPhotoManager$BlankDefaultImageProvider;)V

    sput-object v0, Lcom/oneplus/contacts/common/ContactPhotoManager;->DEFAULT_BLANK:Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;

    .line 91
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized createContactPhotoManager(Landroid/content/Context;)Lcom/oneplus/contacts/common/ContactPhotoManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/oneplus/contacts/common/ContactPhotoManager;

    monitor-enter v1

    .line 517
    :try_start_0
    new-instance v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;

    invoke-direct {v0, p0}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static getDefaultImageRequestFromUri(Landroid/net/Uri;)Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .locals 9
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 246
    new-instance v4, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .line 247
    const-string/jumbo v6, "display_name"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 248
    const-string/jumbo v7, "identifier"

    invoke-virtual {p0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 246
    invoke-direct {v4, v6, v7, v8}, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 250
    .local v4, "request":Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;
    :try_start_0
    const-string/jumbo v6, "contact_type"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "contactType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 252
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v4, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;->contactType:I

    .line 255
    :cond_0
    const-string/jumbo v6, "scale"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 256
    .local v5, "scale":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 257
    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, v4, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;->scale:F

    .line 260
    :cond_1
    const-string/jumbo v6, "offset"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, "offset":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 262
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, v4, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;->offset:F

    .line 265
    :cond_2
    const-string/jumbo v6, "is_circular"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "isCircular":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 267
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, v4, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;->isCircular:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v0    # "contactType":Ljava/lang/String;
    .end local v2    # "isCircular":Ljava/lang/String;
    .end local v3    # "offset":Ljava/lang/String;
    .end local v5    # "scale":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v4

    .line 269
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "ContactPhotoManager"

    const-string/jumbo v7, "Invalid DefaultImageRequest image parameters provided, ignoring and using defaults."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDefaultLetterAvatarDrawableForContact(Landroid/content/Context;ZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hires"    # Z
    .param p2, "defaultImageRequest"    # Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .prologue
    .line 154
    invoke-static {p0, p2}, Lcom/oneplus/contacts/common/ContactPhotoManager$OPLetterDefaultImageProvider;->getDefaultImageForContact(Landroid/content/Context;Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/contacts/common/ContactPhotoManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 505
    sget-object v1, Lcom/oneplus/contacts/common/ContactPhotoManager;->sInstance:Lcom/oneplus/contacts/common/ContactPhotoManager;

    if-nez v1, :cond_0

    .line 506
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 507
    .local v0, "applicationContext":Landroid/content/Context;
    invoke-static {v0}, Lcom/oneplus/contacts/common/ContactPhotoManager;->createContactPhotoManager(Landroid/content/Context;)Lcom/oneplus/contacts/common/ContactPhotoManager;

    move-result-object v1

    sput-object v1, Lcom/oneplus/contacts/common/ContactPhotoManager;->sInstance:Lcom/oneplus/contacts/common/ContactPhotoManager;

    .line 508
    sget-object v1, Lcom/oneplus/contacts/common/ContactPhotoManager;->sInstance:Lcom/oneplus/contacts/common/ContactPhotoManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 509
    invoke-static {p0}, Lcom/android/contacts/common/util/PermissionsUtil;->hasContactsPermissions(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    sget-object v1, Lcom/oneplus/contacts/common/ContactPhotoManager;->sInstance:Lcom/oneplus/contacts/common/ContactPhotoManager;

    invoke-virtual {v1}, Lcom/oneplus/contacts/common/ContactPhotoManager;->preloadPhotosInBackground()V

    .line 513
    .end local v0    # "applicationContext":Landroid/content/Context;
    :cond_0
    sget-object v1, Lcom/oneplus/contacts/common/ContactPhotoManager;->sInstance:Lcom/oneplus/contacts/common/ContactPhotoManager;

    return-object v1
.end method

.method public static injectContactPhotoManagerForTesting(Lcom/oneplus/contacts/common/ContactPhotoManager;)V
    .locals 0
    .param p0, "photoManager"    # Lcom/oneplus/contacts/common/ContactPhotoManager;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 522
    sput-object p0, Lcom/oneplus/contacts/common/ContactPhotoManager;->sInstance:Lcom/oneplus/contacts/common/ContactPhotoManager;

    .line 521
    return-void
.end method

.method public static removeContactType(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 220
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "encodedFragment":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 222
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 223
    .local v0, "builder":Landroid/net/Uri$Builder;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 224
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 226
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public abstract cancelPendingRequests(Landroid/view/View;)V
.end method

.method protected isDefaultImageUri(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 278
    const-string/jumbo v0, "defaultimage"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;)V
    .locals 8
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoUri"    # Landroid/net/Uri;
    .param p3, "darkTheme"    # Z
    .param p4, "isCircular"    # Z
    .param p5, "defaultImageRequest"    # Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .prologue
    .line 589
    sget-object v7, Lcom/oneplus/contacts/common/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/oneplus/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    .line 588
    return-void
.end method

.method public final loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;)V
    .locals 8
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoUri"    # Landroid/net/Uri;
    .param p3, "requestedExtent"    # I
    .param p4, "darkTheme"    # Z
    .param p5, "isCircular"    # Z
    .param p6, "defaultImageRequest"    # Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .prologue
    .line 576
    sget-object v7, Lcom/oneplus/contacts/common/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 575
    invoke-virtual/range {v0 .. v7}, Lcom/oneplus/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    .line 574
    return-void
.end method

.method public abstract loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;)V
.end method

.method public final loadThumbnail(Landroid/widget/ImageView;JZZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;)V
    .locals 8
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoId"    # J
    .param p4, "darkTheme"    # Z
    .param p5, "isCircular"    # Z
    .param p6, "defaultImageRequest"    # Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .prologue
    .line 540
    sget-object v7, Lcom/oneplus/contacts/common/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/oneplus/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    .line 539
    return-void
.end method

.method public abstract loadThumbnail(Landroid/widget/ImageView;JZZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;)V
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 636
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 641
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 646
    return-void
.end method

.method public abstract pause()V
.end method

.method public abstract preloadPhotosInBackground()V
.end method

.method public abstract refreshCache()V
.end method

.method public abstract resume()V
.end method
