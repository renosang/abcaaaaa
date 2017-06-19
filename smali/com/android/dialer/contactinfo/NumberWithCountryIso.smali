.class public final Lcom/android/dialer/contactinfo/NumberWithCountryIso;
.super Ljava/lang/Object;
.source "NumberWithCountryIso.java"


# instance fields
.field public final countryIso:Ljava/lang/String;

.field public final number:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/dialer/contactinfo/NumberWithCountryIso;->number:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/android/dialer/contactinfo/NumberWithCountryIso;->countryIso:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 39
    if-nez p1, :cond_0

    return v1

    .line 40
    :cond_0
    instance-of v2, p1, Lcom/android/dialer/contactinfo/NumberWithCountryIso;

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    .line 41
    check-cast v0, Lcom/android/dialer/contactinfo/NumberWithCountryIso;

    .line 42
    .local v0, "other":Lcom/android/dialer/contactinfo/NumberWithCountryIso;
    iget-object v2, p0, Lcom/android/dialer/contactinfo/NumberWithCountryIso;->number:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/dialer/contactinfo/NumberWithCountryIso;->number:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    iget-object v1, p0, Lcom/android/dialer/contactinfo/NumberWithCountryIso;->countryIso:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/dialer/contactinfo/NumberWithCountryIso;->countryIso:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 42
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 48
    iget-object v2, p0, Lcom/android/dialer/contactinfo/NumberWithCountryIso;->number:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 49
    .local v1, "numberHashCode":I
    :goto_0
    iget-object v2, p0, Lcom/android/dialer/contactinfo/NumberWithCountryIso;->countryIso:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 51
    .local v0, "countryHashCode":I
    :goto_1
    xor-int v2, v1, v0

    return v2

    .line 48
    .end local v0    # "countryHashCode":I
    .end local v1    # "numberHashCode":I
    :cond_0
    iget-object v2, p0, Lcom/android/dialer/contactinfo/NumberWithCountryIso;->number:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    .restart local v1    # "numberHashCode":I
    goto :goto_0

    .line 49
    :cond_1
    iget-object v2, p0, Lcom/android/dialer/contactinfo/NumberWithCountryIso;->countryIso:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1
.end method
