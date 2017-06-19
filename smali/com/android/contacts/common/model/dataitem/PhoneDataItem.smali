.class public Lcom/android/contacts/common/model/dataitem/PhoneDataItem;
.super Lcom/android/contacts/common/model/dataitem/DataItem;
.source "PhoneDataItem.java"


# static fields
.field public static final KEY_FORMATTED_PHONE_NUMBER:Ljava/lang/String; = "formattedPhoneNumber"


# instance fields
.field private location:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    .line 48
    return-void
.end method


# virtual methods
.method public buildDataStringForDisplay(Landroid/content/Context;Lcom/android/contacts/common/model/dataitem/DataKind;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getFormattedPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "formatted":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 90
    return-object v0

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public computeFormattedPhoneNumber(Ljava/lang/String;)V
    .locals 4
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "phoneNumber":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getNormalizedNumber()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-static {v1, v2, p1}, Lcom/oneplus/contacts/common/utils/OPPhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "formattedPhoneNumber":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string/jumbo v3, "formattedPhoneNumber"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .end local v0    # "formattedPhoneNumber":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getFormattedPhoneNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "formattedPhoneNumber"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data3"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getNormalizedNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data4"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->location:Ljava/lang/String;

    .line 43
    return-void
.end method
