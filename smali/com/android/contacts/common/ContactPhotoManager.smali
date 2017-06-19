.class public abstract Lcom/android/contacts/common/ContactPhotoManager;
.super Ljava/lang/Object;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/ContactPhotoManager$BlankDefaultImageProvider;,
        Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;,
        Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;,
        Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;
    }
.end annotation


# static fields
.field private static final CONTACT_TYPE_PARAM_KEY:Ljava/lang/String; = "contact_type"

.field static final DEBUG:Z = false

.field static final DEBUG_SIZES:Z = false

.field public static DEFAULT_AVATAR:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider; = null

.field public static final DEFAULT_BLANK:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

.field private static final DEFAULT_IMAGE_URI:Landroid/net/Uri;

.field private static final DEFAULT_IMAGE_URI_SCHEME:Ljava/lang/String; = "defaultimage"

.field private static final DISPLAY_NAME_PARAM_KEY:Ljava/lang/String; = "display_name"

.field private static final IDENTIFIER_PARAM_KEY:Ljava/lang/String; = "identifier"

.field public static final IS_CIRCULAR_DEFAULT:Z = false

.field private static final IS_CIRCULAR_PARAM_KEY:Ljava/lang/String; = "is_circular"

.field public static final OFFSET_DEFAULT:F = 0.0f

.field private static final OFFSET_PARAM_KEY:Ljava/lang/String; = "offset"

.field public static final SCALE_DEFAULT:F = 1.0f

.field private static final SCALE_PARAM_KEY:Ljava/lang/String; = "scale"

.field static final TAG:Ljava/lang/String; = "ContactPhotoManager"

.field public static final TYPE_BUSINESS:I = 0x2

.field public static final TYPE_DEFAULT:I = 0x1

.field public static final TYPE_PERSON:I = 0x1

.field public static final TYPE_VOICEMAIL:I = 0x3

.field private static sDefaultLetterAvatar:Landroid/graphics/drawable/Drawable;

.field private static sInstance:Lcom/android/contacts/common/ContactPhotoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    const-string/jumbo v0, "defaultimage://"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_IMAGE_URI:Landroid/net/Uri;

    .line 116
    sput-object v1, Lcom/android/contacts/common/ContactPhotoManager;->sDefaultLetterAvatar:Landroid/graphics/drawable/Drawable;

    .line 451
    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;-><init>(Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;)V

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    .line 453
    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$BlankDefaultImageProvider;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/ContactPhotoManager$BlankDefaultImageProvider;-><init>(Lcom/android/contacts/common/ContactPhotoManager$BlankDefaultImageProvider;)V

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_BLANK:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendBusinessContactType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "photoUrl"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 197
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 198
    .local v0, "builder":Landroid/net/Uri$Builder;
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 199
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static declared-synchronized createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/contacts/common/ContactPhotoManager;

    monitor-enter v1

    .line 468
    :try_start_0
    new-instance v0, Lcom/android/contacts/common/ContactPhotoManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getDefaultAvatarDrawableForContact(Landroid/content/Context;Landroid/content/res/Resources;ZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Landroid/accounts/Account;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "hires"    # Z
    .param p3, "defaultImageRequest"    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .param p4, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v1, 0x0

    .line 133
    if-nez p3, :cond_1

    .line 134
    sget-object v0, Lcom/android/contacts/common/ContactPhotoManager;->sDefaultLetterAvatar:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 137
    invoke-static {p0, p1, v1, p4}, Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;->getDefaultImageForContact(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Landroid/accounts/Account;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManager;->sDefaultLetterAvatar:Landroid/graphics/drawable/Drawable;

    .line 140
    :cond_0
    sget-object v0, Lcom/android/contacts/common/ContactPhotoManager;->sDefaultLetterAvatar:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 142
    :cond_1
    invoke-static {p0, p1, p3, p4}, Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;->getDefaultImageForContact(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Landroid/accounts/Account;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultAvatarDrawableForContact(Landroid/content/res/Resources;ZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "hires"    # Z
    .param p2, "defaultImageRequest"    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-static {v0, p0, p1, p2, v0}, Lcom/android/contacts/common/ContactPhotoManager;->getDefaultAvatarDrawableForContact(Landroid/content/Context;Landroid/content/res/Resources;ZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Landroid/accounts/Account;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultAvatarUriForContact(Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)Landroid/net/Uri;
    .locals 3
    .param p0, "request"    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .prologue
    .line 160
    sget-object v1, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_IMAGE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 161
    .local v0, "builder":Landroid/net/Uri$Builder;
    if-eqz p0, :cond_5

    .line 162
    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->displayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    const-string/jumbo v1, "display_name"

    iget-object v2, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->identifier:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 166
    const-string/jumbo v1, "identifier"

    iget-object v2, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 168
    :cond_1
    iget v1, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->contactType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 169
    const-string/jumbo v1, "contact_type"

    .line 170
    iget v2, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->contactType:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 172
    :cond_2
    iget v1, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    .line 173
    const-string/jumbo v1, "scale"

    iget v2, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->scale:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 175
    :cond_3
    iget v1, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->offset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    .line 176
    const-string/jumbo v1, "offset"

    iget v2, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->offset:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 178
    :cond_4
    iget-boolean v1, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->isCircular:Z

    if-eqz v1, :cond_5

    .line 179
    const-string/jumbo v1, "is_circular"

    .line 180
    iget-boolean v2, p0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->isCircular:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 184
    :cond_5
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method protected static getDefaultImageRequestFromUri(Landroid/net/Uri;)Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .locals 9
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 235
    new-instance v4, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .line 236
    const-string/jumbo v6, "display_name"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 237
    const-string/jumbo v7, "identifier"

    invoke-virtual {p0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 235
    invoke-direct {v4, v6, v7, v8}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 239
    .local v4, "request":Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    :try_start_0
    const-string/jumbo v6, "contact_type"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "contactType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 241
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v4, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->contactType:I

    .line 244
    :cond_0
    const-string/jumbo v6, "scale"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 245
    .local v5, "scale":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 246
    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, v4, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->scale:F

    .line 249
    :cond_1
    const-string/jumbo v6, "offset"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, "offset":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 251
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, v4, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->offset:F

    .line 254
    :cond_2
    const-string/jumbo v6, "is_circular"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "isCircular":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 256
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, v4, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->isCircular:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v0    # "contactType":Ljava/lang/String;
    .end local v2    # "isCircular":Ljava/lang/String;
    .end local v3    # "offset":Ljava/lang/String;
    .end local v5    # "scale":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v4

    .line 258
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "ContactPhotoManager"

    const-string/jumbo v7, "Invalid DefaultImageRequest image parameters provided, ignoring and using defaults."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 456
    sget-object v1, Lcom/android/contacts/common/ContactPhotoManager;->sInstance:Lcom/android/contacts/common/ContactPhotoManager;

    if-nez v1, :cond_0

    .line 457
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 458
    .local v0, "applicationContext":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v1

    sput-object v1, Lcom/android/contacts/common/ContactPhotoManager;->sInstance:Lcom/android/contacts/common/ContactPhotoManager;

    .line 459
    sget-object v1, Lcom/android/contacts/common/ContactPhotoManager;->sInstance:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 460
    invoke-static {p0}, Lcom/android/contacts/common/util/PermissionsUtil;->hasContactsPermissions(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    sget-object v1, Lcom/android/contacts/common/ContactPhotoManager;->sInstance:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v1}, Lcom/android/contacts/common/ContactPhotoManager;->preloadPhotosInBackground()V

    .line 464
    .end local v0    # "applicationContext":Landroid/content/Context;
    :cond_0
    sget-object v1, Lcom/android/contacts/common/ContactPhotoManager;->sInstance:Lcom/android/contacts/common/ContactPhotoManager;

    return-object v1
.end method

.method public static injectContactPhotoManagerForTesting(Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 0
    .param p0, "photoManager"    # Lcom/android/contacts/common/ContactPhotoManager;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 475
    sput-object p0, Lcom/android/contacts/common/ContactPhotoManager;->sInstance:Lcom/android/contacts/common/ContactPhotoManager;

    .line 474
    return-void
.end method

.method public static isBusinessContactUri(Landroid/net/Uri;)Z
    .locals 3
    .param p0, "photoUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 225
    if-nez p0, :cond_0

    .line 226
    return v1

    .line 229
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "encodedFragment":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 231
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 230
    :cond_1
    return v1
.end method

.method public static removeContactType(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 209
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "encodedFragment":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 211
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 212
    .local v0, "builder":Landroid/net/Uri$Builder;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 213
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 215
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public abstract cacheBitmap(Landroid/net/Uri;Landroid/graphics/Bitmap;[B)V
.end method

.method public abstract cancelPendingRequests(Landroid/view/View;)V
.end method

.method public abstract clear()V
.end method

.method protected isDefaultImageUri(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 267
    const-string/jumbo v0, "defaultimage"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;Landroid/accounts/Account;ZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V
    .locals 9
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoUri"    # Landroid/net/Uri;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "darkTheme"    # Z
    .param p5, "isCircular"    # Z
    .param p6, "defaultImageRequest"    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .prologue
    .line 571
    sget-object v8, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    .line 570
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;Landroid/accounts/Account;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    .line 569
    return-void
.end method

.method public final loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V
    .locals 9
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoUri"    # Landroid/net/Uri;
    .param p3, "darkTheme"    # Z
    .param p4, "isCircular"    # Z
    .param p5, "defaultImageRequest"    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .prologue
    .line 577
    sget-object v8, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    .line 576
    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;Landroid/accounts/Account;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    .line 575
    return-void
.end method

.method public final loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V
    .locals 9
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoUri"    # Landroid/net/Uri;
    .param p3, "requestedExtent"    # I
    .param p4, "darkTheme"    # Z
    .param p5, "isCircular"    # Z
    .param p6, "defaultImageRequest"    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .prologue
    .line 549
    sget-object v8, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    .line 548
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;Landroid/accounts/Account;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    .line 547
    return-void
.end method

.method public final loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V
    .locals 9
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoUri"    # Landroid/net/Uri;
    .param p3, "requestedExtent"    # I
    .param p4, "darkTheme"    # Z
    .param p5, "isCircular"    # Z
    .param p6, "defaultImageRequest"    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .param p7, "defaultProvider"    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    .prologue
    .line 555
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;Landroid/accounts/Account;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    .line 554
    return-void
.end method

.method public final loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;Landroid/accounts/Account;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V
    .locals 9
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoUri"    # Landroid/net/Uri;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "requestedExtent"    # I
    .param p5, "darkTheme"    # Z
    .param p6, "isCircular"    # Z
    .param p7, "defaultImageRequest"    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .prologue
    .line 543
    sget-object v8, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 542
    invoke-virtual/range {v0 .. v8}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;Landroid/accounts/Account;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    .line 541
    return-void
.end method

.method public abstract loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;Landroid/accounts/Account;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V
.end method

.method public final loadThumbnail(Landroid/widget/ImageView;JLandroid/accounts/Account;ZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V
    .locals 10
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoId"    # J
    .param p4, "account"    # Landroid/accounts/Account;
    .param p5, "darkTheme"    # Z
    .param p6, "isCircular"    # Z
    .param p7, "defaultImageRequest"    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .prologue
    .line 494
    sget-object v8, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 493
    invoke-virtual/range {v0 .. v8}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JLandroid/accounts/Account;ZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    .line 492
    return-void
.end method

.method public abstract loadThumbnail(Landroid/widget/ImageView;JLandroid/accounts/Account;ZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V
.end method

.method public final loadThumbnail(Landroid/widget/ImageView;JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V
    .locals 10
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoId"    # J
    .param p4, "darkTheme"    # Z
    .param p5, "isCircular"    # Z
    .param p6, "defaultImageRequest"    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .prologue
    .line 500
    sget-object v8, Lcom/android/contacts/common/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    .line 499
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JLandroid/accounts/Account;ZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    .line 498
    return-void
.end method

.method public final loadThumbnail(Landroid/widget/ImageView;JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V
    .locals 10
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoId"    # J
    .param p4, "darkTheme"    # Z
    .param p5, "isCircular"    # Z
    .param p6, "defaultImageRequest"    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .param p7, "defaultProvider"    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    .prologue
    .line 506
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JLandroid/accounts/Account;ZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    .line 505
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 624
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 629
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 634
    return-void
.end method

.method public abstract pause()V
.end method

.method public abstract preloadPhotosInBackground()V
.end method

.method public abstract refreshCache()V
.end method

.method public abstract removePhoto(Landroid/widget/ImageView;)V
.end method

.method public abstract resume()V
.end method
