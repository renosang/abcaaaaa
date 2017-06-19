.class final Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;
.super Ljava/lang/Object;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Request"
.end annotation


# instance fields
.field private final mDarkTheme:Z

.field private final mDefaultImageRequest:Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

.field private final mDefaultProvider:Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;

.field private final mId:J

.field private final mIsCircular:Z

.field private final mRequestedExtent:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static synthetic -get0(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;)J
    .locals 2

    iget-wide v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mId:J

    return-wide v0
.end method

.method static synthetic -get1(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mIsCircular:Z

    return v0
.end method

.method private constructor <init>(JLandroid/net/Uri;IZZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "requestedExtent"    # I
    .param p5, "darkTheme"    # Z
    .param p6, "isCircular"    # Z
    .param p7, "defaultProvider"    # Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;
    .param p8, "defaultImageRequest"    # Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .prologue
    .line 1730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1732
    iput-wide p1, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mId:J

    .line 1733
    iput-object p3, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    .line 1734
    iput-boolean p5, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mDarkTheme:Z

    .line 1735
    iput-boolean p6, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mIsCircular:Z

    .line 1736
    iput p4, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    .line 1737
    iput-object p7, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mDefaultProvider:Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;

    .line 1738
    iput-object p8, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mDefaultImageRequest:Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .line 1731
    return-void
.end method

.method public static createFromThumbnailId(JZZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;)Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;
    .locals 10
    .param p0, "id"    # J
    .param p2, "darkTheme"    # Z
    .param p3, "isCircular"    # Z
    .param p4, "defaultProvider"    # Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;
    .param p5, "defaultImageRequest"    # Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .prologue
    .line 1743
    new-instance v1, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-wide v2, p0

    move v6, p2

    move v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;-><init>(JLandroid/net/Uri;IZZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    return-object v1
.end method

.method public static createFromUri(Landroid/net/Uri;IZZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;)Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;
    .locals 10
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "requestedExtent"    # I
    .param p2, "darkTheme"    # Z
    .param p3, "isCircular"    # Z
    .param p4, "defaultProvider"    # Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;
    .param p5, "defaultImageRequest"    # Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .prologue
    .line 1748
    new-instance v1, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;

    const-wide/16 v2, 0x0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;-><init>(JLandroid/net/Uri;IZZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    return-object v1
.end method


# virtual methods
.method public applyDefaultImage(Landroid/widget/ImageView;Z)V
    .locals 4
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "isCircular"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1808
    iget-object v1, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mDefaultImageRequest:Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

    if-nez v1, :cond_0

    .line 1809
    new-instance v0, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-direct {v0, v2, v2, v2, p2}, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1824
    .local v0, "request":Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;
    :goto_0
    iget-object v1, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mDefaultProvider:Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;

    iget v2, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    iget-boolean v3, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mDarkTheme:Z

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;IZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    .line 1806
    return-void

    .line 1811
    .end local v0    # "request":Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;
    :cond_0
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mDefaultImageRequest:Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .restart local v0    # "request":Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1780
    if-ne p0, p1, :cond_0

    return v7

    .line 1781
    :cond_0
    if-nez p1, :cond_1

    return v6

    .line 1782
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v6

    :cond_2
    move-object v0, p1

    .line 1783
    check-cast v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;

    .line 1784
    .local v0, "that":Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;
    iget-wide v2, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mId:J

    iget-wide v4, v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mId:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    return v6

    .line 1785
    :cond_3
    iget v1, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    iget v2, v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    if-eq v1, v2, :cond_4

    return v6

    .line 1786
    :cond_4
    iget-object v1, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    iget-object v2, v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/android/contacts/common/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_5

    return v6

    .line 1791
    :cond_5
    return v7
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 1761
    iget-wide v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mId:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public getRequestedExtent()I
    .locals 1

    .prologue
    .line 1765
    iget v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 1770
    const/16 v0, 0x1f

    .line 1772
    .local v0, "prime":I
    iget-wide v2, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mId:J

    iget-wide v4, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v2, 0x1f

    .line 1773
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    add-int v1, v2, v3

    .line 1774
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 1775
    return v1

    .line 1774
    :cond_0
    iget-object v2, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isUriRequest()Z
    .locals 1

    .prologue
    .line 1753
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
