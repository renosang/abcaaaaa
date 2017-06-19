.class public Lcom/android/dialer/calllog/ContactInfo;
.super Ljava/lang/Object;
.source "ContactInfo.java"


# static fields
.field public static EMPTY:Lcom/android/dialer/calllog/ContactInfo;


# instance fields
.field public formattedNumber:Ljava/lang/String;

.field public isBadData:Z

.field public label:Ljava/lang/String;

.field public lookupKey:Ljava/lang/String;

.field public lookupUri:Landroid/net/Uri;

.field public name:Ljava/lang/String;

.field public nameAlternative:Ljava/lang/String;

.field public normalizedNumber:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public objectId:Ljava/lang/String;

.field public phonebookLabel:Ljava/lang/String;

.field public photoId:J

.field public photoUri:Landroid/net/Uri;

.field public sourceType:I

.field public type:I

.field public userType:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/android/dialer/calllog/ContactInfo;

    invoke-direct {v0}, Lcom/android/dialer/calllog/ContactInfo;-><init>()V

    sput-object v0, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dialer/calllog/ContactInfo;->sourceType:I

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 81
    if-ne p0, p1, :cond_0

    return v7

    .line 82
    :cond_0
    if-nez p1, :cond_1

    return v6

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/calllog/ContactInfo;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v6

    :cond_2
    move-object v0, p1

    .line 84
    check-cast v0, Lcom/android/dialer/calllog/ContactInfo;

    .line 85
    .local v0, "other":Lcom/android/dialer/calllog/ContactInfo;
    iget-object v1, p0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    iget-object v2, v0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/android/contacts/common/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_3

    return v6

    .line 86
    :cond_3
    iget-object v1, p0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    return v6

    .line 87
    :cond_4
    iget-object v1, p0, Lcom/android/dialer/calllog/ContactInfo;->nameAlternative:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/dialer/calllog/ContactInfo;->nameAlternative:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    return v6

    .line 88
    :cond_5
    iget v1, p0, Lcom/android/dialer/calllog/ContactInfo;->type:I

    iget v2, v0, Lcom/android/dialer/calllog/ContactInfo;->type:I

    if-eq v1, v2, :cond_6

    return v6

    .line 89
    :cond_6
    iget-object v1, p0, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    return v6

    .line 90
    :cond_7
    iget-object v1, p0, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    return v6

    .line 91
    :cond_8
    iget-object v1, p0, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    return v6

    .line 92
    :cond_9
    iget-object v1, p0, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    return v6

    .line 93
    :cond_a
    iget-wide v2, p0, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    iget-wide v4, v0, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_b

    return v6

    .line 94
    :cond_b
    iget-object v1, p0, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    iget-object v2, v0, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/android/contacts/common/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_c

    return v6

    .line 95
    :cond_c
    iget-object v1, p0, Lcom/android/dialer/calllog/ContactInfo;->objectId:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/dialer/calllog/ContactInfo;->objectId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    return v6

    .line 96
    :cond_d
    iget-wide v2, p0, Lcom/android/dialer/calllog/ContactInfo;->userType:J

    iget-wide v4, v0, Lcom/android/dialer/calllog/ContactInfo;->userType:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_e

    return v6

    .line 97
    :cond_e
    return v7
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 72
    const/16 v0, 0x1f

    .line 74
    .local v0, "prime":I
    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 75
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 76
    return v1

    .line 74
    .end local v1    # "result":I
    :cond_0
    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    goto :goto_0

    .line 75
    .restart local v1    # "result":I
    :cond_1
    iget-object v3, p0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 102
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string/jumbo v1, "lookupUri"

    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 103
    const-string/jumbo v1, "nameAlternative"

    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->nameAlternative:Ljava/lang/String;

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 104
    const-string/jumbo v1, "type"

    iget v2, p0, Lcom/android/dialer/calllog/ContactInfo;->type:I

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 104
    const-string/jumbo v1, "label"

    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 105
    const-string/jumbo v1, "number"

    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 105
    const-string/jumbo v1, "formattedNumber"

    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 106
    const-string/jumbo v1, "normalizedNumber"

    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 106
    const-string/jumbo v1, "photoId"

    iget-wide v2, p0, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    .line 102
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 107
    const-string/jumbo v1, "photoUri"

    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 107
    const-string/jumbo v1, "objectId"

    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->objectId:Ljava/lang/String;

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 108
    const-string/jumbo v1, "userType"

    iget-wide v2, p0, Lcom/android/dialer/calllog/ContactInfo;->userType:J

    .line 102
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
