.class public Lcom/android/contacts/common/model/dataitem/EmailDataItem;
.super Lcom/android/contacts/common/model/dataitem/DataItem;
.source "EmailDataItem.java"


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
.method public getAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/EmailDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/EmailDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/EmailDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data4"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/EmailDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data3"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
