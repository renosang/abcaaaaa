.class public abstract Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;
.super Ljava/lang/Object;
.source "BaseAccountType.java"

# interfaces
.implements Lcom/android/contacts/common/model/account/AccountType$StringInflater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CommonInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLabelColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    const-string/jumbo v0, "data3"

    return-object v0
.end method

.method protected getTypeColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    const-string/jumbo v0, "data2"

    return-object v0
.end method

.method protected getTypeLabel(Landroid/content/res/Resources;Ljava/lang/Integer;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "type"    # Ljava/lang/Integer;
    .param p3, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 546
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;->getTypeLabelResource(Ljava/lang/Integer;)I

    move-result v0

    .line 547
    .local v0, "labelRes":I
    if-nez p2, :cond_0

    .line 548
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 549
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;->isCustom(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 550
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    if-nez p3, :cond_1

    const-string/jumbo p3, ""

    .end local p3    # "label":Ljava/lang/CharSequence;
    :cond_1
    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 552
    .restart local p3    # "label":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method protected abstract getTypeLabelResource(Ljava/lang/Integer;)I
.end method

.method public inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;->getTypeColumn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 559
    .local v1, "type":Ljava/lang/Integer;
    invoke-virtual {p0}, Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;->getLabelColumn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "label":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;->getTypeLabel(Landroid/content/res/Resources;Ljava/lang/Integer;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method protected isCustom(Ljava/lang/Integer;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x0

    .line 534
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
