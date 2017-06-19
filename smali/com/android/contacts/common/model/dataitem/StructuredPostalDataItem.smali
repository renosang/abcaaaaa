.class public Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;
.super Lcom/android/contacts/common/model/dataitem/DataItem;
.source "StructuredPostalDataItem.java"


# direct methods
.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data7"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data10"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data3"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeighborhood()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data6"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPOBox()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data5"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPostcode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data9"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data8"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data4"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
