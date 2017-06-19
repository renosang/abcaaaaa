.class public final Lcom/android/dialer/contactinfo/ContactInfoRequest;
.super Ljava/lang/Object;
.source "ContactInfoRequest.java"


# instance fields
.field public final callLogInfo:Lcom/android/dialer/calllog/ContactInfo;

.field public final countryIso:Ljava/lang/String;

.field public final number:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "callLogInfo"    # Lcom/android/dialer/calllog/ContactInfo;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/dialer/contactinfo/ContactInfoRequest;->number:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/android/dialer/contactinfo/ContactInfoRequest;->countryIso:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/android/dialer/contactinfo/ContactInfoRequest;->callLogInfo:Lcom/android/dialer/calllog/ContactInfo;

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    if-ne p0, p1, :cond_0

    return v4

    .line 44
    :cond_0
    if-nez p1, :cond_1

    return v3

    .line 45
    :cond_1
    instance-of v1, p1, Lcom/android/dialer/contactinfo/ContactInfoRequest;

    if-nez v1, :cond_2

    return v3

    :cond_2
    move-object v0, p1

    .line 47
    check-cast v0, Lcom/android/dialer/contactinfo/ContactInfoRequest;

    .line 49
    .local v0, "other":Lcom/android/dialer/contactinfo/ContactInfoRequest;
    iget-object v1, p0, Lcom/android/dialer/contactinfo/ContactInfoRequest;->number:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/dialer/contactinfo/ContactInfoRequest;->number:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 50
    :cond_3
    iget-object v1, p0, Lcom/android/dialer/contactinfo/ContactInfoRequest;->countryIso:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/dialer/contactinfo/ContactInfoRequest;->countryIso:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 51
    :cond_4
    iget-object v1, p0, Lcom/android/dialer/contactinfo/ContactInfoRequest;->callLogInfo:Lcom/android/dialer/calllog/ContactInfo;

    iget-object v2, v0, Lcom/android/dialer/contactinfo/ContactInfoRequest;->callLogInfo:Lcom/android/dialer/calllog/ContactInfo;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 53
    :cond_5
    return v4
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 58
    const/16 v0, 0x1f

    .line 60
    .local v0, "prime":I
    iget-object v2, p0, Lcom/android/dialer/contactinfo/ContactInfoRequest;->callLogInfo:Lcom/android/dialer/calllog/ContactInfo;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 61
    .local v1, "result":I
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/android/dialer/contactinfo/ContactInfoRequest;->countryIso:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 62
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/android/dialer/contactinfo/ContactInfoRequest;->number:Ljava/lang/String;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 63
    return v1

    .line 60
    .end local v1    # "result":I
    :cond_0
    iget-object v2, p0, Lcom/android/dialer/contactinfo/ContactInfoRequest;->callLogInfo:Lcom/android/dialer/calllog/ContactInfo;

    invoke-virtual {v2}, Lcom/android/dialer/calllog/ContactInfo;->hashCode()I

    move-result v2

    goto :goto_0

    .line 61
    .restart local v1    # "result":I
    :cond_1
    iget-object v2, p0, Lcom/android/dialer/contactinfo/ContactInfoRequest;->countryIso:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 62
    :cond_2
    iget-object v3, p0, Lcom/android/dialer/contactinfo/ContactInfoRequest;->number:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method
