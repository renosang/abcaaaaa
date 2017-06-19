.class Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;
.super Lcom/oneplus/contacts/common/ContactPhotoManager;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;,
        Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;,
        Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;
    }
.end annotation


# static fields
.field private static final BITMAP_UNAVAILABLE:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

.field private static final COLUMNS:[Ljava/lang/String;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static mThumbnailSize:I


# instance fields
.field private final mBitmapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mBitmapHolderCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mBitmapHolderCacheAllUnfresh:Z

.field private final mBitmapHolderCacheRedZoneBytes:I

.field private final mContext:Landroid/content/Context;

.field private final mFreshCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mLoaderThread:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;

.field private mLoadingRequested:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private final mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;",
            ">;"
        }
    .end annotation
.end field

.field private final mStaleCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;)Landroid/util/LruCache;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCacheRedZoneBytes:I

    return v0
.end method

.method static synthetic -get4(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "bytes"    # [B
    .param p3, "preloading"    # Z
    .param p4, "requestedExtent"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZI)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .param p1, "photoIds"    # Ljava/util/Set;
    .param p2, "photoIdsAsStrings"    # Ljava/util/Set;
    .param p3, "uris"    # Ljava/util/Set;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->obtainPhotoIdsAndUrisToLoad(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 667
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 669
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "data15"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;

    .line 678
    new-instance v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    new-array v1, v3, [B

    invoke-direct {v0, v1, v3}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;-><init>([BI)V

    sput-object v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->BITMAP_UNAVAILABLE:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    .line 679
    sget-object v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->BITMAP_UNAVAILABLE:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    new-instance v1, Ljava/lang/ref/SoftReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    .line 650
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 775
    invoke-direct {p0}, Lcom/oneplus/contacts/common/ContactPhotoManager;-><init>()V

    .line 713
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    .line 732
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 731
    iput-object v4, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 737
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v4, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    .line 765
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v4, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mStaleCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 768
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v4, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mFreshCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 776
    iput-object p1, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    .line 779
    const-string/jumbo v4, "activity"

    .line 778
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 781
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v4

    if-eqz v4, :cond_1

    const/high16 v2, 0x3f000000    # 0.5f

    .line 783
    .local v2, "cacheSizeAdjustment":F
    :goto_0
    const/high16 v4, 0x49d80000    # 1769472.0f

    mul-float/2addr v4, v2

    float-to-int v1, v4

    .line 784
    .local v1, "bitmapCacheSize":I
    new-instance v4, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$1;

    invoke-direct {v4, p0, v1}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$1;-><init>(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;I)V

    iput-object v4, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    .line 794
    const v4, 0x49f42400    # 2000000.0f

    mul-float/2addr v4, v2

    float-to-int v3, v4

    .line 795
    .local v3, "holderCacheSize":I
    new-instance v4, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$2;

    invoke-direct {v4, p0, v3}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$2;-><init>(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;I)V

    iput-object v4, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    .line 805
    int-to-double v4, v3

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCacheRedZoneBytes:I

    .line 806
    const-string/jumbo v4, "ContactPhotoManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cache adj: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 813
    const v5, 0x7f0b01ae

    .line 812
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sput v4, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mThumbnailSize:I

    .line 816
    invoke-static {p1}, Lcom/android/contacts/commonbind/util/UserAgentGenerator;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mUserAgent:Ljava/lang/String;

    .line 817
    iget-object v4, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mUserAgent:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 818
    const-string/jumbo v4, ""

    iput-object v4, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mUserAgent:Ljava/lang/String;

    .line 775
    :cond_0
    return-void

    .line 781
    .end local v1    # "bitmapCacheSize":I
    .end local v2    # "cacheSizeAdjustment":F
    .end local v3    # "holderCacheSize":I
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private cacheBitmap(Ljava/lang/Object;[BZI)V
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "bytes"    # [B
    .param p3, "preloading"    # Z
    .param p4, "requestedExtent"    # I

    .prologue
    .line 1276
    new-instance v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    .line 1277
    if-nez p2, :cond_2

    const/4 v1, -0x1

    .line 1276
    :goto_0
    invoke-direct {v0, p2, v1}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;-><init>([BI)V

    .line 1281
    .local v0, "holder":Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    if-nez p3, :cond_0

    .line 1282
    invoke-static {v0, p4}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->inflateBitmap(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;I)V

    .line 1285
    :cond_0
    if-eqz p2, :cond_3

    .line 1286
    iget-object v1, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    iget-object v1, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_1

    .line 1288
    const-string/jumbo v1, "ContactPhotoManager"

    const-string/jumbo v2, "Bitmap too big to fit in cache."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    iget-object v1, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    sget-object v2, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->BITMAP_UNAVAILABLE:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    invoke-virtual {v1, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    :cond_1
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    .line 1262
    return-void

    .line 1277
    .end local v0    # "holder":Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    :cond_2
    invoke-static {p2}, Lcom/android/contacts/common/util/BitmapUtil;->getSmallerExtentFromBytes([B)I

    move-result v1

    goto :goto_0

    .line 1292
    .restart local v0    # "holder":Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    :cond_3
    iget-object v1, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    sget-object v2, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->BITMAP_UNAVAILABLE:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    invoke-virtual {v1, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private createAndApplyDefaultImageForUri(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "requestedExtent"    # I
    .param p4, "darkTheme"    # Z
    .param p5, "isCircular"    # Z
    .param p6, "defaultProvider"    # Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;

    .prologue
    .line 927
    invoke-static {p2}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->getDefaultImageRequestFromUri(Landroid/net/Uri;)Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

    move-result-object v0

    .line 928
    .local v0, "request":Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;
    iput-boolean p5, v0, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;->isCircular:Z

    .line 929
    invoke-virtual {p6, p1, p3, p4, v0}, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;IZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    .line 926
    return-void
.end method

.method private getDrawableForBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "request"    # Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;

    .prologue
    .line 1072
    invoke-static {p3}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->-get1(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1074
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    .line 1075
    .local v0, "drawable":Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 1076
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 1077
    return-object v0

    .line 1079
    .end local v0    # "drawable":Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private static inflateBitmap(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;I)V
    .locals 9
    .param p0, "holder"    # Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    .param p1, "requestedExtent"    # I

    .prologue
    .line 1090
    iget v7, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->originalSmallerExtent:I

    invoke-static {v7, p1}, Lcom/android/contacts/common/util/BitmapUtil;->findOptimalSampleSize(II)I

    move-result v5

    .line 1091
    .local v5, "sampleSize":I
    iget-object v1, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    .line 1092
    .local v1, "bytes":[B
    if-eqz v1, :cond_0

    array-length v7, v1

    if-nez v7, :cond_1

    .line 1093
    :cond_0
    return-void

    .line 1096
    :cond_1
    iget v7, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->decodedSampleSize:I

    if-ne v5, v7, :cond_2

    .line 1099
    iget-object v7, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-eqz v7, :cond_2

    .line 1100
    iget-object v7, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    iput-object v7, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 1101
    iget-object v7, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_2

    .line 1102
    return-void

    .line 1108
    :cond_2
    :try_start_0
    invoke-static {v1, v5}, Lcom/android/contacts/common/util/BitmapUtil;->decodeBitmapFromBytes([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1110
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_3

    .line 1112
    return-void

    .line 1119
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1120
    .local v4, "height":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 1125
    .local v6, "width":I
    if-eq v4, v6, :cond_4

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    sget v8, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mThumbnailSize:I

    mul-int/lit8 v8, v8, 0x2

    if-gt v7, v8, :cond_4

    .line 1126
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1127
    .local v2, "dimension":I
    invoke-static {v0, v2, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1145
    .end local v2    # "dimension":I
    :cond_4
    iput v5, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->decodedSampleSize:I

    .line 1146
    iput-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 1147
    new-instance v7, Ljava/lang/ref/SoftReference;

    invoke-direct {v7, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v7, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "height":I
    .end local v6    # "width":I
    :goto_0
    return-void

    .line 1153
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/OutOfMemoryError;
    goto :goto_0
.end method

.method private static isChildView(Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "potentialChild"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 974
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p0, :cond_1

    .line 975
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 976
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 975
    invoke-static {p0, v0}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->isChildView(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    .line 974
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadCachedPhoto(Landroid/widget/ImageView;Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;Z)Z
    .locals 10
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "request"    # Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;
    .param p3, "fadeIn"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 1000
    iget-object v6, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    .line 1001
    .local v2, "holder":Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    if-nez v2, :cond_0

    .line 1003
    invoke-static {p2}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->-get1(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;)Z

    move-result v6

    invoke-virtual {p2, p1, v6}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->applyDefaultImage(Landroid/widget/ImageView;Z)V

    .line 1004
    return v9

    .line 1007
    :cond_0
    iget-object v6, v2, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-nez v6, :cond_1

    .line 1008
    invoke-static {p2}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->-get1(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;)Z

    move-result v6

    invoke-virtual {p2, p1, v6}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->applyDefaultImage(Landroid/widget/ImageView;Z)V

    .line 1009
    iget-boolean v6, v2, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    return v6

    .line 1012
    :cond_1
    iget-object v6, v2, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-nez v6, :cond_2

    move-object v0, v7

    .line 1013
    .local v0, "cachedBitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-nez v0, :cond_4

    .line 1014
    iget-object v6, v2, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    array-length v6, v6

    const/16 v8, 0x2000

    if-ge v6, v8, :cond_3

    .line 1016
    invoke-virtual {p2}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v6

    invoke-static {v2, v6}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->inflateBitmap(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;I)V

    .line 1017
    iget-object v0, v2, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 1018
    if-nez v0, :cond_4

    .line 1020
    invoke-static {p2}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->-get1(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;)Z

    move-result v6

    invoke-virtual {p2, p1, v6}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->applyDefaultImage(Landroid/widget/ImageView;Z)V

    .line 1023
    return v9

    .line 1012
    .end local v0    # "cachedBitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v6, v2, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    move-object v0, v6

    goto :goto_0

    .line 1029
    .restart local v0    # "cachedBitmap":Landroid/graphics/Bitmap;
    :cond_3
    invoke-static {p2}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->-get1(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;)Z

    move-result v6

    invoke-virtual {p2, p1, v6}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->applyDefaultImage(Landroid/widget/ImageView;Z)V

    .line 1030
    return v9

    .line 1034
    :cond_4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1035
    .local v4, "previousDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz p3, :cond_7

    if-eqz v4, :cond_7

    .line 1036
    const/4 v6, 0x2

    new-array v3, v6, [Landroid/graphics/drawable/Drawable;

    .line 1038
    .local v3, "layers":[Landroid/graphics/drawable/Drawable;
    instance-of v6, v4, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v6, :cond_6

    move-object v5, v4

    .line 1040
    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    .line 1042
    .local v5, "previousTransitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/TransitionDrawable;->getNumberOfLayers()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 1041
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v3, v9

    .line 1046
    .end local v5    # "previousTransitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    :goto_1
    iget-object v6, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {p0, v6, v0, p2}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->getDrawableForBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v3, v8

    .line 1047
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1048
    .local v1, "drawable":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1049
    const/16 v6, 0xc8

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 1057
    .end local v1    # "drawable":Landroid/graphics/drawable/TransitionDrawable;
    .end local v3    # "layers":[Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    iget-object v8, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v8}, Landroid/util/LruCache;->maxSize()I

    move-result v8

    div-int/lit8 v8, v8, 0x6

    if-ge v6, v8, :cond_5

    .line 1058
    iget-object v6, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    :cond_5
    iput-object v7, v2, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 1064
    iget-boolean v6, v2, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    return v6

    .line 1044
    .restart local v3    # "layers":[Landroid/graphics/drawable/Drawable;
    :cond_6
    aput-object v4, v3, v9

    goto :goto_1

    .line 1052
    .end local v3    # "layers":[Landroid/graphics/drawable/Drawable;
    :cond_7
    iget-object v6, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {p0, v6, v0, p2}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->getDrawableForBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1051
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "request"    # Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;

    .prologue
    .line 933
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->loadCachedPhoto(Landroid/widget/ImageView;Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;Z)Z

    move-result v0

    .line 934
    .local v0, "loaded":Z
    if-eqz v0, :cond_1

    .line 935
    iget-object v1, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    :cond_0
    :goto_0
    return-void

    .line 937
    :cond_1
    iget-object v1, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    iget-boolean v1, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v1, :cond_0

    .line 940
    invoke-direct {p0}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->requestLoading()V

    goto :goto_0
.end method

.method private obtainPhotoIdsAndUrisToLoad(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1318
    .local p1, "photoIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .local p2, "photoIdsAsStrings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "uris":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;>;"
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 1319
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 1320
    invoke-interface {p3}, Ljava/util/Set;->clear()V

    .line 1322
    const/4 v2, 0x0

    .line 1332
    .local v2, "jpegsDecoded":Z
    iget-object v4, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1333
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1334
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;

    .line 1335
    .local v3, "request":Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;
    iget-object v4, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v3}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    .line 1336
    .local v0, "holder":Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    sget-object v4, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->BITMAP_UNAVAILABLE:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    if-eq v0, v4, :cond_0

    .line 1339
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    if-eqz v4, :cond_2

    .line 1340
    iget-object v4, v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1342
    :cond_1
    invoke-virtual {v3}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v4

    invoke-static {v0, v4}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->inflateBitmap(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;I)V

    .line 1343
    const/4 v2, 0x1

    .line 1340
    goto :goto_0

    .line 1345
    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v4, v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    if-nez v4, :cond_0

    .line 1346
    :cond_3
    invoke-virtual {v3}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->isUriRequest()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1347
    invoke-interface {p3, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1349
    :cond_4
    invoke-virtual {v3}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1350
    invoke-static {v3}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->-get0(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1356
    .end local v0    # "holder":Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    .end local v3    # "request":Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;
    :cond_5
    if-eqz v2, :cond_6

    iget-object v4, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1317
    :cond_6
    return-void
.end method

.method private processLoadedImages()V
    .locals 5

    .prologue
    .line 1230
    iget-object v4, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1231
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/widget/ImageView;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1232
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1233
    .local v3, "view":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;

    .line 1236
    .local v1, "key":Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;
    const/4 v4, 0x0

    invoke-direct {p0, v3, v1, v4}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->loadCachedPhoto(Landroid/widget/ImageView;Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;Z)Z

    move-result v2

    .line 1237
    .local v2, "loaded":Z
    if-eqz v2, :cond_0

    .line 1238
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1242
    .end local v1    # "key":Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;
    .end local v2    # "loaded":Z
    .end local v3    # "view":Landroid/widget/ImageView;
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->softenCache()V

    .line 1244
    iget-object v4, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1245
    invoke-direct {p0}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->requestLoading()V

    .line 1229
    :cond_2
    return-void
.end method

.method private requestLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1186
    iget-boolean v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mLoadingRequested:Z

    if-nez v0, :cond_0

    .line 1187
    iput-boolean v1, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mLoadingRequested:Z

    .line 1188
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1185
    :cond_0
    return-void
.end method

.method private softenCache()V
    .locals 3

    .prologue
    .line 1254
    iget-object v2, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "holder$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    .line 1255
    .local v0, "holder":Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1253
    .end local v0    # "holder":Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelPendingRequests(Landroid/view/View;)V
    .locals 5
    .param p1, "fragmentRootView"    # Landroid/view/View;

    .prologue
    .line 958
    if-nez p1, :cond_0

    .line 959
    iget-object v2, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 960
    return-void

    .line 962
    :cond_0
    iget-object v2, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 963
    iget-object v3, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    .line 962
    new-array v3, v3, [Landroid/widget/ImageView;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/widget/ImageView;

    .line 964
    .local v1, "requestSetCopy":[Landroid/widget/ImageView;
    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v0, v1, v2

    .line 967
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {p1, v0}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->isChildView(Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 968
    :cond_1
    iget-object v4, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 957
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_3
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1161
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 1162
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 1158
    return-void
.end method

.method public ensureLoaderThread()V
    .locals 2

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mLoaderThread:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;

    if-nez v0, :cond_0

    .line 1220
    new-instance v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;

    iget-object v1, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;-><init>(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mLoaderThread:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;

    .line 1221
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mLoaderThread:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v0}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->start()V

    .line 1218
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1197
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1215
    return v1

    .line 1199
    :pswitch_0
    iput-boolean v1, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mLoadingRequested:Z

    .line 1200
    iget-boolean v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v0, :cond_0

    .line 1201
    invoke-virtual {p0}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->ensureLoaderThread()V

    .line 1202
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mLoaderThread:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v0}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->requestLoading()V

    .line 1204
    :cond_0
    return v2

    .line 1208
    :pswitch_1
    iget-boolean v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v0, :cond_1

    .line 1209
    invoke-direct {p0}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->processLoadedImages()V

    .line 1212
    :cond_1
    return v2

    .line 1197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;)V
    .locals 7
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoUri"    # Landroid/net/Uri;
    .param p3, "requestedExtent"    # I
    .param p4, "darkTheme"    # Z
    .param p5, "isCircular"    # Z
    .param p6, "defaultImageRequest"    # Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .param p7, "defaultProvider"    # Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;

    .prologue
    .line 908
    if-nez p2, :cond_0

    .line 910
    invoke-virtual {p7, p1, p3, p4, p6}, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;IZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    .line 912
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    :goto_0
    return-void

    .line 915
    :cond_0
    invoke-virtual {p0, p2}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->isDefaultImageUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p7

    .line 916
    invoke-direct/range {v0 .. v6}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->createAndApplyDefaultImageForUri(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    goto :goto_0

    :cond_1
    move-object v0, p2

    move v1, p3

    move v2, p4

    move v3, p5

    move-object v4, p7

    move-object v5, p6

    .line 919
    invoke-static/range {v0 .. v5}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->createFromUri(Landroid/net/Uri;IZZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;)Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;)V

    goto :goto_0
.end method

.method public loadThumbnail(Landroid/widget/ImageView;JZZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;)V
    .locals 6
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoId"    # J
    .param p4, "darkTheme"    # Z
    .param p5, "isCircular"    # Z
    .param p6, "defaultImageRequest"    # Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .param p7, "defaultProvider"    # Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;

    .prologue
    .line 893
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 895
    const/4 v0, -0x1

    invoke-virtual {p7, p1, v0, p4, p6}, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;IZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    .line 896
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    :goto_0
    return-void

    :cond_0
    move-wide v0, p2

    move v2, p4

    move v3, p5

    move-object v4, p7

    move-object v5, p6

    .line 899
    invoke-static/range {v0 .. v5}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->createFromThumbnailId(JZZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;)Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;)V

    goto :goto_0
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 878
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 880
    invoke-virtual {p0}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->clear()V

    .line 876
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mPaused:Z

    .line 1166
    return-void
.end method

.method public preloadPhotosInBackground()V
    .locals 1

    .prologue
    .line 886
    invoke-virtual {p0}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->ensureLoaderThread()V

    .line 887
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mLoaderThread:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v0}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    .line 885
    return-void
.end method

.method public refreshCache()V
    .locals 3

    .prologue
    .line 981
    iget-boolean v2, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    if-eqz v2, :cond_0

    .line 983
    return-void

    .line 986
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    .line 987
    iget-object v2, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "holder$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    .line 988
    .local v0, "holder":Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    sget-object v2, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->BITMAP_UNAVAILABLE:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    if-eq v0, v2, :cond_1

    .line 989
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    goto :goto_0

    .line 980
    .end local v0    # "holder":Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    :cond_2
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 1172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mPaused:Z

    .line 1174
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1175
    invoke-direct {p0}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->requestLoading()V

    .line 1171
    :cond_0
    return-void
.end method
