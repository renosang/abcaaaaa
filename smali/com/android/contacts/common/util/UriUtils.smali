.class public Lcom/android/contacts/common/util/UriUtils;
.super Ljava/lang/Object;
.source "UriUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "uri1"    # Landroid/net/Uri;
    .param p1, "uri2"    # Landroid/net/Uri;

    .prologue
    .line 33
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 34
    const/4 v0, 0x1

    return v0

    .line 36
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 37
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 39
    :cond_2
    invoke-virtual {p0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getLookupKeyFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "lookupUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 85
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/common/util/UriUtils;->isEncodedContactUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    :cond_0
    return-object v1

    .line 86
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 89
    .local v0, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static isEncodedContactUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 56
    if-nez p0, :cond_0

    .line 57
    return v1

    .line 59
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "lastPathSegment":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 61
    return v1

    .line 63
    :cond_1
    const-string/jumbo v1, "encoded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static nullForNonContactsUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 71
    if-nez p0, :cond_0

    .line 72
    return-object v0

    .line 74
    :cond_0
    const-string/jumbo v1, "com.android.contacts"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .end local p0    # "uri":Landroid/net/Uri;
    :goto_0
    return-object p0

    .restart local p0    # "uri":Landroid/net/Uri;
    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method public static parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "uriString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 44
    if-nez p0, :cond_0

    .line 45
    return-object v0

    .line 47
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static uriToString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 52
    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
