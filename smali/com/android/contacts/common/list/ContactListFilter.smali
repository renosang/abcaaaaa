.class public final Lcom/android/contacts/common/list/ContactListFilter;
.super Ljava/lang/Object;
.source "ContactListFilter.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ContactListFilter$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/contacts/common/list/ContactListFilter;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/common/list/ContactListFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILTER_TYPE_ACCOUNT:I = 0x0

.field public static final FILTER_TYPE_ALL_ACCOUNTS:I = -0x2

.field public static final FILTER_TYPE_ALL_WITHOUT_SIM:I = 0x2

.field public static final FILTER_TYPE_CAN_SAVE_EMAIL:I = -0x7

.field public static final FILTER_TYPE_CUSTOM:I = -0x3

.field public static final FILTER_TYPE_DEFAULT:I = -0x1

.field private static final FILTER_TYPE_GROUP:I = 0x1

.field public static final FILTER_TYPE_SINGLE_CONTACT:I = -0x6

.field public static final FILTER_TYPE_STARRED:I = -0x4

.field public static final FILTER_TYPE_WITH_PHONE_NUMBERS_ONLY:I = -0x5

.field private static final KEY_ACCOUNT_NAME:Ljava/lang/String; = "filter.accountName"

.field private static final KEY_ACCOUNT_TYPE:Ljava/lang/String; = "filter.accountType"

.field private static final KEY_DATA_SET:Ljava/lang/String; = "filter.dataSet"

.field private static final KEY_FILTER_TYPE:Ljava/lang/String; = "filter.type"


# instance fields
.field public final accountName:Ljava/lang/String;

.field public final accountType:Ljava/lang/String;

.field public final dataSet:Ljava/lang/String;

.field public final filterType:I

.field public final icon:Landroid/graphics/drawable/Drawable;

.field private mId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 221
    new-instance v0, Lcom/android/contacts/common/list/ContactListFilter$1;

    invoke-direct {v0}, Lcom/android/contacts/common/list/ContactListFilter$1;-><init>()V

    .line 220
    sput-object v0, Lcom/android/contacts/common/list/ContactListFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "filterType"    # I
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "dataSet"    # Ljava/lang/String;
    .param p5, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    .line 70
    iput-object p2, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    .line 73
    iput-object p5, p0, Lcom/android/contacts/common/list/ContactListFilter;->icon:Landroid/graphics/drawable/Drawable;

    .line 68
    return-void
.end method

.method public static createAccountFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Lcom/android/contacts/common/list/ContactListFilter;
    .locals 6
    .param p0, "accountType"    # Ljava/lang/String;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "dataSet"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 82
    new-instance v0, Lcom/android/contacts/common/list/ContactListFilter;

    const/4 v1, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;
    .locals 6
    .param p0, "filterType"    # I

    .prologue
    const/4 v2, 0x0

    .line 77
    new-instance v0, Lcom/android/contacts/common/list/ContactListFilter;

    move v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static final filterTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "filterType"    # I

    .prologue
    .line 293
    packed-switch p0, :pswitch_data_0

    .line 309
    const-string/jumbo v0, "(unknown)"

    return-object v0

    .line 295
    :pswitch_0
    const-string/jumbo v0, "FILTER_TYPE_DEFAULT"

    return-object v0

    .line 297
    :pswitch_1
    const-string/jumbo v0, "FILTER_TYPE_ALL_ACCOUNTS"

    return-object v0

    .line 299
    :pswitch_2
    const-string/jumbo v0, "FILTER_TYPE_CUSTOM"

    return-object v0

    .line 301
    :pswitch_3
    const-string/jumbo v0, "FILTER_TYPE_STARRED"

    return-object v0

    .line 303
    :pswitch_4
    const-string/jumbo v0, "FILTER_TYPE_WITH_PHONE_NUMBERS_ONLY"

    return-object v0

    .line 305
    :pswitch_5
    const-string/jumbo v0, "FILTER_TYPE_SINGLE_CONTACT"

    return-object v0

    .line 307
    :pswitch_6
    const-string/jumbo v0, "FILTER_TYPE_ACCOUNT"

    return-object v0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public static isContactListFilterKey(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 353
    const-string/jumbo v0, "filter.type"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    const-string/jumbo v0, "filter.accountName"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 353
    if-nez v0, :cond_0

    .line 355
    const-string/jumbo v0, "filter.accountType"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 353
    if-nez v0, :cond_0

    .line 356
    const-string/jumbo v0, "filter.dataSet"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 353
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static restoreDefaultPreferences(Landroid/content/Context;)Lcom/android/contacts/common/list/ContactListFilter;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x2

    .line 315
    invoke-static {p0}, Lcom/android/contacts/common/list/ContactListFilter;->restoreFromPreferences(Landroid/content/Context;)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    .line 316
    .local v0, "filter":Lcom/android/contacts/common/list/ContactListFilter;
    if-nez v0, :cond_0

    .line 317
    invoke-static {v3}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    .line 321
    :cond_0
    iget v1, v0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 322
    iget v1, v0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v2, -0x6

    if-ne v1, v2, :cond_2

    .line 323
    :cond_1
    invoke-static {v3}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    .line 325
    :cond_2
    return-object v0
.end method

.method public static restoreDefaultPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/common/list/ContactListFilter;
    .locals 4
    .param p0, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v3, -0x2

    .line 186
    invoke-static {p0}, Lcom/android/contacts/common/list/ContactListFilter;->restoreFromPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    .line 187
    .local v0, "filter":Lcom/android/contacts/common/list/ContactListFilter;
    if-nez v0, :cond_0

    .line 188
    invoke-static {v3}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    .line 192
    :cond_0
    iget v1, v0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 193
    iget v1, v0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v2, -0x6

    if-ne v1, v2, :cond_2

    .line 194
    :cond_1
    invoke-static {v3}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    .line 196
    :cond_2
    return-object v0
.end method

.method private static restoreFromPreferences(Landroid/content/Context;)Lcom/android/contacts/common/list/ContactListFilter;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 329
    const-string/jumbo v0, "filter.type"

    invoke-static {p0, v0, v6}, Lcom/oneplus/contacts/common/ContactsSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 330
    .local v1, "filterType":I
    if-ne v1, v6, :cond_0

    .line 331
    return-object v5

    .line 334
    :cond_0
    const-string/jumbo v0, "filter.accountName"

    invoke-static {p0, v0, v5}, Lcom/oneplus/contacts/common/ContactsSettings;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, "accountName":Ljava/lang/String;
    const-string/jumbo v0, "filter.accountType"

    invoke-static {p0, v0, v5}, Lcom/oneplus/contacts/common/ContactsSettings;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, "accountType":Ljava/lang/String;
    const-string/jumbo v0, "filter.dataSet"

    invoke-static {p0, v0, v5}, Lcom/oneplus/contacts/common/ContactsSettings;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 337
    .local v4, "dataSet":Ljava/lang/String;
    new-instance v0, Lcom/android/contacts/common/list/ContactListFilter;

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private static restoreFromPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/common/list/ContactListFilter;
    .locals 7
    .param p0, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 200
    const-string/jumbo v0, "filter.type"

    invoke-interface {p0, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 201
    .local v1, "filterType":I
    if-ne v1, v6, :cond_0

    .line 202
    return-object v5

    .line 205
    :cond_0
    const-string/jumbo v0, "filter.accountName"

    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "accountName":Ljava/lang/String;
    const-string/jumbo v0, "filter.accountType"

    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "accountType":Ljava/lang/String;
    const-string/jumbo v0, "filter.dataSet"

    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, "dataSet":Ljava/lang/String;
    new-instance v0, Lcom/android/contacts/common/list/ContactListFilter;

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static storeToPreferences(Landroid/content/Context;Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;

    .prologue
    const/4 v2, 0x0

    .line 341
    if-eqz p1, :cond_0

    iget v1, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v3, -0x6

    if-ne v1, v3, :cond_0

    .line 342
    return-void

    .line 344
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 345
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "filter.type"

    if-nez p1, :cond_1

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 346
    const-string/jumbo v3, "filter.accountName"

    if-nez p1, :cond_2

    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string/jumbo v3, "filter.accountType"

    if-nez p1, :cond_3

    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string/jumbo v1, "filter.dataSet"

    if-nez p1, :cond_4

    :goto_3
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-static {p0, v0}, Lcom/oneplus/contacts/common/ContactsSettings;->commit(Landroid/content/Context;Landroid/os/Bundle;)Z

    .line 340
    return-void

    .line 345
    :cond_1
    iget v1, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    goto :goto_0

    .line 346
    :cond_2
    iget-object v1, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    goto :goto_1

    .line 347
    :cond_3
    iget-object v1, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    goto :goto_2

    .line 348
    :cond_4
    iget-object v2, p1, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    goto :goto_3
.end method

.method public static storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 4
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;

    .prologue
    const/4 v1, 0x0

    .line 170
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v2, -0x6

    if-ne v0, v2, :cond_0

    .line 171
    return-void

    .line 173
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 174
    const-string/jumbo v3, "filter.type"

    if-nez p1, :cond_1

    const/4 v0, -0x1

    .line 173
    :goto_0
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 175
    const-string/jumbo v3, "filter.accountName"

    if-nez p1, :cond_2

    move-object v0, v1

    .line 173
    :goto_1
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 176
    const-string/jumbo v3, "filter.accountType"

    if-nez p1, :cond_3

    move-object v0, v1

    .line 173
    :goto_2
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 177
    const-string/jumbo v2, "filter.dataSet"

    if-nez p1, :cond_4

    .line 173
    :goto_3
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 169
    return-void

    .line 174
    :cond_1
    iget v0, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    goto :goto_0

    .line 175
    :cond_2
    iget-object v0, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    goto :goto_1

    .line 176
    :cond_3
    iget-object v0, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    goto :goto_2

    .line 177
    :cond_4
    iget-object v1, p1, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    goto :goto_3
.end method


# virtual methods
.method public addAccountQueryParameterToUrl(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;
    .locals 2
    .param p1, "uriBuilder"    # Landroid/net/Uri$Builder;

    .prologue
    .line 269
    iget v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-eqz v0, :cond_0

    .line 270
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "filterType must be FILTER_TYPE_ACCOUNT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_0
    const-string/jumbo v0, "account_name"

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 273
    const-string/jumbo v0, "account_type"

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 274
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    const-string/jumbo v0, "data_set"

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 277
    :cond_1
    return-object p1
.end method

.method public compareTo(Lcom/android/contacts/common/list/ContactListFilter;)I
    .locals 3
    .param p1, "another"    # Lcom/android/contacts/common/list/ContactListFilter;

    .prologue
    .line 117
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 118
    .local v0, "res":I
    if-eqz v0, :cond_0

    .line 119
    return v0

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 123
    if-eqz v0, :cond_1

    .line 124
    return v0

    .line 127
    :cond_1
    iget v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    iget v2, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 116
    check-cast p1, Lcom/android/contacts/common/list/ContactListFilter;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListFilter;->compareTo(Lcom/android/contacts/common/list/ContactListFilter;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 145
    if-ne p0, p1, :cond_0

    .line 146
    return v4

    .line 149
    :cond_0
    instance-of v1, p1, Lcom/android/contacts/common/list/ContactListFilter;

    if-nez v1, :cond_1

    .line 150
    return v3

    :cond_1
    move-object v0, p1

    .line 153
    check-cast v0, Lcom/android/contacts/common/list/ContactListFilter;

    .line 154
    .local v0, "otherFilter":Lcom/android/contacts/common/list/ContactListFilter;
    iget v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    iget v2, v0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-ne v1, v2, :cond_2

    .line 155
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    return v4

    .line 158
    :cond_2
    return v3
.end method

.method public getId()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x2d

    .line 246
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->mId:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 253
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 256
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    const/16 v3, 0x5f

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->mId:Ljava/lang/String;

    .line 260
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->mId:Ljava/lang/String;

    return-object v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 132
    iget v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    .line 133
    .local v0, "code":I
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 134
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 135
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 138
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 140
    :cond_1
    return v0
.end method

.method public isValidationRequired()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 90
    iget v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[filter type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    invoke-static {v2}, Lcom/android/contacts/common/list/ContactListFilter;->filterTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-nez v1, :cond_0

    .line 284
    const-string/jumbo v1, ", accountType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 285
    const-string/jumbo v2, ", accountName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 286
    const-string/jumbo v2, ", dataSet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    :cond_0
    const-string/jumbo v1, ", icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilter;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    iget v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    packed-switch v0, :pswitch_data_0

    .line 112
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :pswitch_0
    const-string/jumbo v0, "default"

    return-object v0

    .line 99
    :pswitch_1
    const-string/jumbo v0, "all_accounts"

    return-object v0

    .line 101
    :pswitch_2
    const-string/jumbo v0, "custom"

    return-object v0

    .line 103
    :pswitch_3
    const-string/jumbo v0, "starred"

    return-object v0

    .line 105
    :pswitch_4
    const-string/jumbo v0, "with_phones"

    return-object v0

    .line 107
    :pswitch_5
    const-string/jumbo v0, "single"

    return-object v0

    .line 109
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 110
    const-string/jumbo v1, " "

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 214
    iget v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    return-void
.end method
